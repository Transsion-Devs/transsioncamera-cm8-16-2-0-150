.class public Lcom/obs/services/model/inventory/InventoryConfiguration$OptionalFieldOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/inventory/InventoryConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionalFieldOptions"
.end annotation


# static fields
.field public static final ENCRYPTION_STATUS:Ljava/lang/String; = "EncryptionStatus"

.field public static final ETAG:Ljava/lang/String; = "ETag"

.field public static final IS_MULTIPART_UPLOADED:Ljava/lang/String; = "IsMultipartUploaded"

.field public static final LAST_MODIFIED_DATE:Ljava/lang/String; = "LastModifiedDate"

.field public static final REPLICATION_STATUS:Ljava/lang/String; = "ReplicationStatus"

.field public static final SIZE:Ljava/lang/String; = "Size"

.field public static final STORAGE_CLASS:Ljava/lang/String; = "StorageClass"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
