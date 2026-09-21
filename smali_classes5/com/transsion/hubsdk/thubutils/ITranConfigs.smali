.class public interface abstract Lcom/transsion/hubsdk/thubutils/ITranConfigs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLASS_INFO:Lthubutils/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lthubutils/a<",
            "Lcom/transsion/hubsdk/thubutils/ITranConfigs;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLASS_PATH:Ljava/lang/String; = "/system/framework/thubutils.jar"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lthubutils/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.transsion.common.thubutils.TranConfigs"

    aput-object v3, v1, v2

    sget-object v2, Lcom/transsion/hubsdk/thubutils/ITranConfigs$$ExternalSyntheticLambda0;->INSTANCE:Lcom/transsion/hubsdk/thubutils/ITranConfigs$$ExternalSyntheticLambda0;

    const-class v3, Lcom/transsion/hubsdk/thubutils/ITranConfigs;

    invoke-direct {v0, v1, v3, v2}, Lthubutils/a;-><init>([Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/transsion/hubsdk/thubutils/ITranConfigs;->CLASS_INFO:Lthubutils/a;

    return-void
.end method

.method public static Instance()Lcom/transsion/hubsdk/thubutils/ITranConfigs;
    .registers 1

    invoke-static {}, Lcom/transsion/hubsdk/thubutils/ITranConfigs$-CC;->Instance()Lcom/transsion/hubsdk/thubutils/ITranConfigs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getAsset(Ljava/lang/String;)Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getConfigs(Ljava/lang/String;)Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getConfigs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getConfigsList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getConfigsList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLibrary(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getMedia(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getNativeLibrary(Ljava/lang/String;Z)Ljava/io/File;
.end method

.method public abstract initialize(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
