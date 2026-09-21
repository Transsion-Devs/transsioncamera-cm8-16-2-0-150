.class public Lcom/transsion/camera/app/proxy/ProxyManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/proxy/ProxyManager$ProxyManagerInstance;
    }
.end annotation


# instance fields
.field private mPortraitClassInfo:Lcom/transsion/camera/app/proxy/TranClassInfo;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/proxy/ProxyManager-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/proxy/ProxyManager;-><init>()V

    return-void
.end method

.method public static getPortrait()Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy;
    .registers 1

    .line 17
    sget-object v0, Lcom/transsion/camera/app/proxy/ProxyManager$ProxyManagerInstance;->INSTANCE:Lcom/transsion/camera/app/proxy/ProxyManager;

    invoke-direct {v0}, Lcom/transsion/camera/app/proxy/ProxyManager;->getPortraitProxy()Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy;

    move-result-object v0

    return-object v0
.end method

.method private getPortraitProxy()Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy;
    .registers 5

    .line 21
    iget-object v0, p0, Lcom/transsion/camera/app/proxy/ProxyManager;->mPortraitClassInfo:Lcom/transsion/camera/app/proxy/TranClassInfo;

    if-nez v0, :cond_14

    .line 22
    new-instance v0, Lcom/transsion/camera/app/proxy/TranClassInfo;

    new-instance v1, Lcom/transsion/camera/app/proxy/ProxyManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/camera/app/proxy/ProxyManager$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.transsion.camera.featurelibs.portraitarchitecture.PortraitImpl"

    const-class v3, Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy;

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/camera/app/proxy/TranClassInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/transsion/camera/app/proxy/ProxyManager;->mPortraitClassInfo:Lcom/transsion/camera/app/proxy/TranClassInfo;

    .line 24
    :cond_14
    iget-object p0, p0, Lcom/transsion/camera/app/proxy/ProxyManager;->mPortraitClassInfo:Lcom/transsion/camera/app/proxy/TranClassInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/proxy/TranClassInfo;->getImpl()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy;

    return-object p0
.end method
