import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:pos/infrastructure/failure/firebase_firestore_failure.dart';
import 'package:pos/infrastructure/model/product.dart';

class ProductRepo {
  CollectionReference _productRef =
      FirebaseFirestore.instance.collection("product");

  Future<Either<String, Product>> getProductById(String id) async {
    try {
      final DocumentSnapshot productDocument = await _productRef.doc(id).get();
      return right(ProductDto().toProduct(productDocument));
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, Product>> getProductByName(String productName) async {
    try {
      final QuerySnapshot productCollection =
          await _productRef.where("productName", isEqualTo: productName).get();
      return right(ProductDto().toProduct(productCollection.docs[0]));
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, List<Product>>> getAllProduct() async {
    try {
      final QuerySnapshot productCollection =
          await _productRef.orderBy("productName", descending: false).get();

      List<Product> listProduct = [];
      for (DocumentSnapshot productDocument in productCollection.docs) {
        listProduct.add(ProductDto().toProduct(productDocument));
      }
      return right(listProduct);
    } catch (error) {
      return left(FirebaseFirestoreFailure.INVALID_DATA);
    }
  }

  Future<Either<String, Unit>> addProduct(Product product) async {
    try {
      await _productRef.add({
        "productName": product.productName,
        "productPrice": product.productPrice,
        "productDiscount": product.productDiscount,
      });
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> updateProduct(Product product) async {
    try {
      await _productRef.doc(product.id).update(
        {
          "productName": product.productName,
          "productPrice": product.productPrice,
          "productDiscount": product.productDiscount,
        },
      );
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }

  Future<Either<String, Unit>> deleteProduct(String productId) async {
    try {
      await _productRef.doc(productId).delete();
      return right(unit);
    } on FirebaseException catch (error) {
      return left(error.code.toString());
    } catch (exception) {
      return left(exception.toString());
    }
  }
}

class ProductDto {
  Product toProduct(DocumentSnapshot productDocument) {
    return Product(
      id: productDocument.id,
      productName: productDocument.data()["productName"],
      productPrice: productDocument.data()["productPrice"],
      productDiscount: productDocument.data()["productDiscount"],
    );
  }
}
