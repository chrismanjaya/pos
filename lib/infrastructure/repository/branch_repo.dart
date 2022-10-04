import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:pos/infrastructure/failure/firebase_firestore_failure.dart';
import 'package:pos/infrastructure/model/branch.dart';

class BranchRepo {
  CollectionReference _branchRef =
      FirebaseFirestore.instance.collection("branch");

  Future<Either<String, Branch>> getbranchById(String id) async {
    try {
      final DocumentSnapshot branchDocument = await _branchRef.doc(id).get();
      return right(BranchDto().toBranch(branchDocument));
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, List<Branch>>> getAllBranch() async {
    try {
      final QuerySnapshot branchCollection = await _branchRef.get();

      List<Branch> listBranch = [];
      for (DocumentSnapshot branchDocument in branchCollection.docs) {
        listBranch.add(BranchDto().toBranch(branchDocument));
      }
      return right(listBranch);
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, Unit>> addBranch(Branch branch) async {
    try {
      await _branchRef.add({
        "branchName": branch.branchName,
        "address": branch.address,
        "phoneNumber": branch.phoneNumber,
      });
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> updateBranch(Branch branch) async {
    try {
      await _branchRef.doc(branch.id).update({
        "branchName": branch.branchName,
        "address": branch.address,
        "phoneNumber": branch.phoneNumber,
      });
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> deleteBranch(String branchId) async {
    try {
      _branchRef.doc(branchId).delete();
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }
}

class BranchDto {
  Branch toBranch(DocumentSnapshot branchDocument) {
    return Branch(
      id: branchDocument.id,
      branchName: branchDocument.data()["branchName"],
      address: branchDocument.data()["address"],
      phoneNumber: branchDocument.data()["phoneNumber"],
    );
  }
}
