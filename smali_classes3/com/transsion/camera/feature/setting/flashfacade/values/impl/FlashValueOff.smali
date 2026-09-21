.class public Lcom/transsion/camera/feature/setting/flashfacade/values/impl/FlashValueOff;
.super Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;-><init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    return-void
.end method


# virtual methods
.method protected initSupportedFeatures(Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object p0, p1, Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;->mOffSupportedFeatures:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public valueSupport(Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method
