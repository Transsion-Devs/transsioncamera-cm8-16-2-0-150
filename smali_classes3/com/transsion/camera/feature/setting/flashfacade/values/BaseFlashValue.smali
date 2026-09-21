.class public abstract Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/setting/flashfacade/values/IFlashValue;


# instance fields
.field private final mSupportedFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;->mValue:Ljava/lang/String;

    .line 30
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;->initSupportedFeatures(Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;->mSupportedFeatures:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method protected abstract initSupportedFeatures(Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)Ljava/util/List;
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
.end method

.method public supportedFeatures()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;->mSupportedFeatures:Ljava/util/List;

    return-object p0
.end method

.method public valueSupport(Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;)Z
    .registers 4

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/values/BaseFlashValue;->mSupportedFeatures:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 49
    const-string v0, "key_super_flash"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_6

    .line 52
    :cond_1b
    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/info/SupportMap;->get(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_23
    const/4 p0, 0x0

    return p0
.end method
