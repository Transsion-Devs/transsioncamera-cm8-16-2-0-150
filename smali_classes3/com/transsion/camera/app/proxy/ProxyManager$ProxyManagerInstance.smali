.class abstract Lcom/transsion/camera/app/proxy/ProxyManager$ProxyManagerInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/proxy/ProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyManagerInstance"
.end annotation


# static fields
.field static final INSTANCE:Lcom/transsion/camera/app/proxy/ProxyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 10
    new-instance v0, Lcom/transsion/camera/app/proxy/ProxyManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/proxy/ProxyManager;-><init>(Lcom/transsion/camera/app/proxy/ProxyManager-IA;)V

    sput-object v0, Lcom/transsion/camera/app/proxy/ProxyManager$ProxyManagerInstance;->INSTANCE:Lcom/transsion/camera/app/proxy/ProxyManager;

    return-void
.end method
