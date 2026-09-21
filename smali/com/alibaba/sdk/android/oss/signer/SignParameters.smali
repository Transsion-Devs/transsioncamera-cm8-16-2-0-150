.class public Lcom/alibaba/sdk/android/oss/signer/SignParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUTHORIZATION_PREFIX:Ljava/lang/String; = "OSS "

.field public static final NEW_LINE:Ljava/lang/String; = "\n"

.field public static final SIGNED_PARAMTERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 28

    .line 39
    const-string v26, "tagging"

    const-string v27, "objectMeta"

    const-string v1, "bucketInfo"

    const-string v2, "acl"

    const-string v3, "uploads"

    const-string v4, "location"

    const-string v5, "cors"

    const-string v6, "logging"

    const-string v7, "website"

    const-string v8, "referer"

    const-string v9, "lifecycle"

    const-string v10, "delete"

    const-string v11, "append"

    const-string v12, "uploadId"

    const-string v13, "partNumber"

    const-string v14, "security-token"

    const-string v15, "position"

    const-string v16, "response-cache-control"

    const-string v17, "response-content-disposition"

    const-string v18, "response-content-encoding"

    const-string v19, "response-content-language"

    const-string v20, "response-content-type"

    const-string v21, "response-expires"

    const-string v22, "x-oss-process"

    const-string v23, "sequential"

    const-string v24, "symlink"

    const-string v25, "restore"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/signer/SignParameters;->SIGNED_PARAMTERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
