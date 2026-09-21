.class public final Lcom/obs/services/internal/utils/SecureObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "SourceFile"


# static fields
.field public static final ALLOWED_CLASS_NAMES:Ljava/util/List;
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
    .registers 12

    .line 27
    const-string v10, "com.obs.services.internal.DownloadResumableClient$DownloadPart"

    const-string v11, "com.obs.services.internal.DownloadResumableClient$ObjectStatus"

    const-string v0, "java.util.ArrayList"

    const-string v1, "com.obs.services.model.PartEtag"

    const-string v2, "java.lang.Integer"

    const-string v3, "java.lang.Number"

    const-string v4, "java.util.Date"

    const-string v5, "com.obs.services.internal.DownloadResumableClient$TmpFileStatus"

    const-string v6, "com.obs.services.internal.UploadResumableClient$UploadCheckPoint"

    const-string v7, "com.obs.services.internal.UploadResumableClient$FileStatus"

    const-string v8, "com.obs.services.internal.UploadResumableClient$UploadPart"

    const-string v9, "com.obs.services.internal.DownloadResumableClient$DownloadCheckPoint"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 27
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/obs/services/internal/utils/SecureObjectInputStream;->ALLOWED_CLASS_NAMES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/io/ObjectInputStream;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    .line 49
    sget-object v1, Lcom/obs/services/internal/utils/SecureObjectInputStream;->ALLOWED_CLASS_NAMES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 52
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 50
    :cond_11
    new-instance p0, Ljava/lang/ClassNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "not find"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
