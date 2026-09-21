.class public Lcom/transsion/hubsdk/core/os/TranThubUserHandleManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranUserHandleManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubUserHandleManager"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIdentifier()I
    .registers 1

    .line 24
    invoke-static {}, Lcom/transsion/hubsdk/os/TranUserHandle;->getIdentifier()I

    move-result p0

    return p0
.end method

.method public getUserIdentifier(Landroid/os/UserHandle;)I
    .registers 2

    .line 29
    new-instance p0, Lcom/transsion/hubsdk/os/TranUserHandle;

    invoke-direct {p0}, Lcom/transsion/hubsdk/os/TranUserHandle;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/os/TranUserHandle;->getUserIdentifier(Landroid/os/UserHandle;)I

    move-result p0

    return p0
.end method
