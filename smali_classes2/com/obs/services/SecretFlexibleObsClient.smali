.class public Lcom/obs/services/SecretFlexibleObsClient;
.super Lcom/obs/services/SecretFlexibleBucketObsClient;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/obs/services/ObsConfiguration;)V
    .registers 3

    .line 65
    const-string v0, ""

    invoke-direct {p0, v0, v0, p1}, Lcom/obs/services/SecretFlexibleObsClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 75
    const-string v0, ""

    invoke-direct {p0, v0, v0, p1}, Lcom/obs/services/SecretFlexibleObsClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V
    .registers 4

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V
    .registers 5

    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/ObsConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abortMultipartUpload(Lcom/obs/services/model/AbortMultipartUploadRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 520
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient;->abortMultipartUpload(Lcom/obs/services/model/AbortMultipartUploadRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 524
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 525
    throw p1
.end method

.method public abortMultipartUpload(Lcom/obs/services/model/AbortMultipartUploadRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6

    .line 530
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient;->abortMultipartUpload(Lcom/obs/services/model/AbortMultipartUploadRequest;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 534
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 535
    throw p1
.end method

.method public completeMultipartUpload(Lcom/obs/services/model/CompleteMultipartUploadRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/CompleteMultipartUploadResult;
    .registers 5

    .line 579
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient;->completeMultipartUpload(Lcom/obs/services/model/CompleteMultipartUploadRequest;)Lcom/obs/services/model/CompleteMultipartUploadResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 583
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 584
    throw p1
.end method

.method public completeMultipartUpload(Lcom/obs/services/model/CompleteMultipartUploadRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/CompleteMultipartUploadResult;
    .registers 6

    .line 589
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient;->completeMultipartUpload(Lcom/obs/services/model/CompleteMultipartUploadRequest;)Lcom/obs/services/model/CompleteMultipartUploadResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 593
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 594
    throw p1
.end method

.method public copyObject(Lcom/obs/services/model/CopyObjectRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/CopyObjectResult;
    .registers 5

    .line 480
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractObjectClient;->copyObject(Lcom/obs/services/model/CopyObjectRequest;)Lcom/obs/services/model/CopyObjectResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 484
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 485
    throw p1
.end method

.method public copyObject(Lcom/obs/services/model/CopyObjectRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/CopyObjectResult;
    .registers 6

    .line 490
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractObjectClient;->copyObject(Lcom/obs/services/model/CopyObjectRequest;)Lcom/obs/services/model/CopyObjectResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 494
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 495
    throw p1
.end method

.method public copyPart(Lcom/obs/services/model/CopyPartRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/CopyPartResult;
    .registers 5

    .line 559
    invoke-virtual {p1}, Lcom/obs/services/model/CopyPartRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient;->copyPart(Lcom/obs/services/model/CopyPartRequest;)Lcom/obs/services/model/CopyPartResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 563
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 564
    throw p1
.end method

.method public copyPart(Lcom/obs/services/model/CopyPartRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/CopyPartResult;
    .registers 6

    .line 569
    invoke-virtual {p1}, Lcom/obs/services/model/CopyPartRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient;->copyPart(Lcom/obs/services/model/CopyPartRequest;)Lcom/obs/services/model/CopyPartResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 573
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 574
    throw p1
.end method

.method public deleteObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 5

    .line 368
    invoke-virtual {p0, p1, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractObjectClient;->deleteObject(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/DeleteObjectResult;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 372
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 373
    throw p1
.end method

.method public deleteObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6

    .line 348
    invoke-virtual {p0, p1, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/obs/services/AbstractObjectClient;->deleteObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/DeleteObjectResult;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 352
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 353
    throw p1
.end method

.method public deleteObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 7

    .line 358
    invoke-virtual {p0, p1, p4, p5, p6}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/obs/services/AbstractObjectClient;->deleteObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/DeleteObjectResult;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 362
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 363
    throw p1
.end method

.method public deleteObjects(Lcom/obs/services/model/DeleteObjectsRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/DeleteObjectsResult;
    .registers 5

    .line 378
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractObjectClient;->deleteObjects(Lcom/obs/services/model/DeleteObjectsRequest;)Lcom/obs/services/model/DeleteObjectsResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 382
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 383
    throw p1
.end method

.method public deleteObjects(Lcom/obs/services/model/DeleteObjectsRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/DeleteObjectsResult;
    .registers 6

    .line 388
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractObjectClient;->deleteObjects(Lcom/obs/services/model/DeleteObjectsRequest;)Lcom/obs/services/model/DeleteObjectsResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 392
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 393
    throw p1
.end method

.method public getObject(Lcom/obs/services/model/GetObjectRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObsObject;
    .registers 5

    .line 288
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractObjectClient;->getObject(Lcom/obs/services/model/GetObjectRequest;)Lcom/obs/services/model/ObsObject;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 292
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 293
    throw p1
.end method

.method public getObject(Lcom/obs/services/model/GetObjectRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObsObject;
    .registers 6

    .line 298
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractObjectClient;->getObject(Lcom/obs/services/model/GetObjectRequest;)Lcom/obs/services/model/ObsObject;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 302
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 303
    throw p1
.end method

.method public getObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;
    .registers 5

    .line 418
    invoke-virtual {p0, p1, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :try_start_3
    invoke-super {p0, p1, p2}, Lcom/obs/services/AbstractObjectClient;->getObjectAcl(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 422
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 423
    throw p1
.end method

.method public getObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;
    .registers 6

    .line 398
    invoke-virtual {p0, p1, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/obs/services/AbstractObjectClient;->getObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 402
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 403
    throw p1
.end method

.method public getObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;
    .registers 7

    .line 408
    invoke-virtual {p0, p1, p4, p5, p6}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/obs/services/AbstractObjectClient;->getObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 412
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 413
    throw p1
.end method

.method public getObjectMetadata(Lcom/obs/services/model/GetObjectMetadataRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObjectMetadata;
    .registers 5

    .line 308
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractObjectClient;->getObjectMetadata(Lcom/obs/services/model/GetObjectMetadataRequest;)Lcom/obs/services/model/ObjectMetadata;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 312
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 313
    throw p1
.end method

.method public getObjectMetadata(Lcom/obs/services/model/GetObjectMetadataRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObjectMetadata;
    .registers 6

    .line 318
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractObjectClient;->getObjectMetadata(Lcom/obs/services/model/GetObjectMetadataRequest;)Lcom/obs/services/model/ObjectMetadata;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 322
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 323
    throw p1
.end method

.method public initiateMultipartUpload(Lcom/obs/services/model/InitiateMultipartUploadRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/InitiateMultipartUploadResult;
    .registers 5

    .line 500
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient;->initiateMultipartUpload(Lcom/obs/services/model/InitiateMultipartUploadRequest;)Lcom/obs/services/model/InitiateMultipartUploadResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 504
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 505
    throw p1
.end method

.method public initiateMultipartUpload(Lcom/obs/services/model/InitiateMultipartUploadRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/InitiateMultipartUploadResult;
    .registers 6

    .line 510
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient;->initiateMultipartUpload(Lcom/obs/services/model/InitiateMultipartUploadRequest;)Lcom/obs/services/model/InitiateMultipartUploadResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 514
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 515
    throw p1
.end method

.method public listMultipartUploads(Lcom/obs/services/model/ListMultipartUploadsRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/MultipartUploadListing;
    .registers 5

    .line 618
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient;->listMultipartUploads(Lcom/obs/services/model/ListMultipartUploadsRequest;)Lcom/obs/services/model/MultipartUploadListing;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 622
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 623
    throw p1
.end method

.method public listMultipartUploads(Lcom/obs/services/model/ListMultipartUploadsRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/MultipartUploadListing;
    .registers 6

    .line 628
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient;->listMultipartUploads(Lcom/obs/services/model/ListMultipartUploadsRequest;)Lcom/obs/services/model/MultipartUploadListing;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 632
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 633
    throw p1
.end method

.method public listObjects(Lcom/obs/services/model/ListObjectsRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObjectListing;
    .registers 5

    .line 140
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractObjectClient;->listObjects(Lcom/obs/services/model/ListObjectsRequest;)Lcom/obs/services/model/ObjectListing;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 144
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 145
    throw p1
.end method

.method public listObjects(Lcom/obs/services/model/ListObjectsRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ObjectListing;
    .registers 6

    .line 150
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractObjectClient;->listObjects(Lcom/obs/services/model/ListObjectsRequest;)Lcom/obs/services/model/ObjectListing;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 154
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 155
    throw p1
.end method

.method public listParts(Lcom/obs/services/model/ListPartsRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ListPartsResult;
    .registers 5

    .line 598
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient;->listParts(Lcom/obs/services/model/ListPartsRequest;)Lcom/obs/services/model/ListPartsResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 602
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 603
    throw p1
.end method

.method public listParts(Lcom/obs/services/model/ListPartsRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ListPartsResult;
    .registers 6

    .line 608
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient;->listParts(Lcom/obs/services/model/ListPartsRequest;)Lcom/obs/services/model/ListPartsResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 612
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 613
    throw p1
.end method

.method public listVersions(Lcom/obs/services/model/ListVersionsRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult;
    .registers 5

    .line 188
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractObjectClient;->listVersions(Lcom/obs/services/model/ListVersionsRequest;)Lcom/obs/services/model/ListVersionsResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 192
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 193
    throw p1
.end method

.method public listVersions(Lcom/obs/services/model/ListVersionsRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult;
    .registers 6

    .line 198
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractObjectClient;->listVersions(Lcom/obs/services/model/ListVersionsRequest;)Lcom/obs/services/model/ListVersionsResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 202
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 203
    throw p1
.end method

.method public listVersions(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult;
    .registers 6

    .line 227
    invoke-virtual {p0, p1, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/obs/services/AbstractObjectClient;->listVersions(Ljava/lang/String;J)Lcom/obs/services/model/ListVersionsResult;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 231
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 232
    throw p1
.end method

.method public listVersions(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult;
    .registers 7

    .line 237
    invoke-virtual {p0, p1, p4, p5, p6}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/obs/services/AbstractObjectClient;->listVersions(Ljava/lang/String;J)Lcom/obs/services/model/ListVersionsResult;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 241
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 242
    throw p1
.end method

.method public listVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult;
    .registers 4

    .line 207
    invoke-virtual {p0, p1, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractObjectClient;->listVersions(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 211
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 212
    throw p1
.end method

.method public listVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult;
    .registers 5

    .line 217
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :try_start_3
    invoke-super {p0, p1}, Lcom/obs/services/AbstractObjectClient;->listVersions(Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 221
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 222
    throw p1
.end method

.method public listVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult;
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    invoke-virtual {p0, p1, p9, p10}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :try_start_3
    invoke-super/range {p0 .. p8}, Lcom/obs/services/AbstractObjectClient;->listVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/obs/services/model/ListVersionsResult;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 168
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 169
    throw p1
.end method

.method public listVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/ListVersionsResult;
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    invoke-virtual {p0, p1, p9, p10, p11}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :try_start_3
    invoke-super/range {p0 .. p8}, Lcom/obs/services/AbstractObjectClient;->listVersions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/obs/services/model/ListVersionsResult;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 182
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 183
    throw p1
.end method

.method public optionsObject(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/OptionsInfoResult;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    invoke-virtual {p0, p1, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/obs/services/AbstractObjectClient;->optionsObject(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;)Lcom/obs/services/model/OptionsInfoResult;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 252
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 253
    throw p1
.end method

.method public optionsObject(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/OptionsInfoResult;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    invoke-virtual {p0, p1, p4, p5, p6}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/obs/services/AbstractObjectClient;->optionsObject(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/OptionsInfoRequest;)Lcom/obs/services/model/OptionsInfoResult;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 263
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 264
    throw p1
.end method

.method public putObject(Lcom/obs/services/model/PutObjectRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/PutObjectResult;
    .registers 5

    .line 268
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractObjectClient;->putObject(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/model/PutObjectResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 272
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 273
    throw p1
.end method

.method public putObject(Lcom/obs/services/model/PutObjectRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/PutObjectResult;
    .registers 6

    .line 278
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractObjectClient;->putObject(Lcom/obs/services/model/PutObjectRequest;)Lcom/obs/services/model/PutObjectResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 282
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 283
    throw p1
.end method

.method public restoreObject(Lcom/obs/services/model/RestoreObjectRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;
    .registers 5

    .line 328
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractObjectClient;->restoreObject(Lcom/obs/services/model/RestoreObjectRequest;)Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 332
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 333
    throw p1
.end method

.method public restoreObject(Lcom/obs/services/model/RestoreObjectRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;
    .registers 6

    .line 338
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractObjectClient;->restoreObject(Lcom/obs/services/model/RestoreObjectRequest;)Lcom/obs/services/model/RestoreObjectRequest$RestoreObjectStatus;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 342
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 343
    throw p1
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 6

    .line 450
    invoke-virtual {p0, p1, p4, p5}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :try_start_3
    invoke-super {p0, p1, p2, p3}, Lcom/obs/services/AbstractObjectClient;->setObjectAcl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 454
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 455
    throw p1
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 7

    .line 460
    invoke-virtual {p0, p1, p5, p6}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :try_start_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/obs/services/AbstractObjectClient;->setObjectAcl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 464
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 465
    throw p1
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 8

    .line 470
    invoke-virtual {p0, p1, p5, p6, p7}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :try_start_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/obs/services/AbstractObjectClient;->setObjectAcl(Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 474
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 475
    throw p1
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 429
    invoke-virtual {p0, p1, p6, p7}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :try_start_3
    invoke-super/range {p0 .. p5}, Lcom/obs/services/AbstractObjectClient;->setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 433
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 434
    throw p1
.end method

.method public setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 440
    invoke-virtual {p0, p1, p6, p7, p8}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :try_start_3
    invoke-super/range {p0 .. p5}, Lcom/obs/services/AbstractObjectClient;->setObjectAcl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/AccessControlList;Ljava/lang/String;)Lcom/obs/services/model/HeaderResponse;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 444
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_b
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 445
    throw p1
.end method

.method public uploadPart(Lcom/obs/services/model/UploadPartRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/UploadPartResult;
    .registers 5

    .line 540
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient;->uploadPart(Lcom/obs/services/model/UploadPartRequest;)Lcom/obs/services/model/UploadPartResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 544
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 545
    throw p1
.end method

.method public uploadPart(Lcom/obs/services/model/UploadPartRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/UploadPartResult;
    .registers 6

    .line 550
    invoke-virtual {p1}, Lcom/obs/services/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/obs/services/SecretFlexibleBucketObsClient;->setContextProviderCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :try_start_7
    invoke-super {p0, p1}, Lcom/obs/services/AbstractMultipartObjectClient;->uploadPart(Lcom/obs/services/model/UploadPartRequest;)Lcom/obs/services/model/UploadPartResult;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 554
    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    return-object p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0}, Lcom/obs/services/SecretFlexibleBucketObsClient;->clearContextProviderCredentials()V

    .line 555
    throw p1
.end method
