.class public Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranWindowInsetsAnimationControllerAdapter;


# instance fields
.field private mTranWindowInsetsAnimationController:Lcom/transsion/hubsdk/view/TranWindowInsetsAnimationController;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTranWindowInsetsAnimationControllerImpl()Lcom/transsion/hubsdk/view/TranWindowInsetsAnimationController;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;->mTranWindowInsetsAnimationController:Lcom/transsion/hubsdk/view/TranWindowInsetsAnimationController;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Lcom/transsion/hubsdk/view/TranWindowInsetsAnimationController;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranWindowInsetsAnimationController;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;->mTranWindowInsetsAnimationController:Lcom/transsion/hubsdk/view/TranWindowInsetsAnimationController;

    .line 33
    :cond_b
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;->mTranWindowInsetsAnimationController:Lcom/transsion/hubsdk/view/TranWindowInsetsAnimationController;

    return-object p0
.end method


# virtual methods
.method public setInsetsAndAlpha(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;FFZZ)V
    .registers 7

    .line 25
    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubWindowInsetsAnimationController;->getTranWindowInsetsAnimationControllerImpl()Lcom/transsion/hubsdk/view/TranWindowInsetsAnimationController;

    move-result-object p0

    .line 26
    invoke-virtual/range {p0 .. p6}, Lcom/transsion/hubsdk/view/TranWindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;FFZZ)V

    return-void
.end method
