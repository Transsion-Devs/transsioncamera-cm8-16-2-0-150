.class public interface abstract Lcom/transsion/hubsdk/thubutils/IAppProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLASS_INFO:Lthubutils/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lthubutils/a<",
            "Lcom/transsion/hubsdk/thubutils/IAppProperties;",
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

    const-string v3, "com.transsion.common.thubutils.AppProperties"

    aput-object v3, v1, v2

    sget-object v2, Lcom/transsion/hubsdk/thubutils/IAppProperties$$ExternalSyntheticLambda0;->INSTANCE:Lcom/transsion/hubsdk/thubutils/IAppProperties$$ExternalSyntheticLambda0;

    const-class v3, Lcom/transsion/hubsdk/thubutils/IAppProperties;

    invoke-direct {v0, v1, v3, v2}, Lthubutils/a;-><init>([Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/transsion/hubsdk/thubutils/IAppProperties;->CLASS_INFO:Lthubutils/a;

    return-void
.end method

.method public static Instance()Lcom/transsion/hubsdk/thubutils/IAppProperties;
    .registers 1

    invoke-static {}, Lcom/transsion/hubsdk/thubutils/IAppProperties$-CC;->Instance()Lcom/transsion/hubsdk/thubutils/IAppProperties;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract initialize(Ljava/lang/String;)V
.end method
