.class public Lcom/transsion/hubsdk/core/view/TranThubViewRootImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranViewRootImplAdapter;


# instance fields
.field private mTranViewRootImpl:Lcom/transsion/hubsdk/view/TranViewRootImpl;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/transsion/hubsdk/view/TranViewRootImpl;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranViewRootImpl;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubViewRootImpl;->mTranViewRootImpl:Lcom/transsion/hubsdk/view/TranViewRootImpl;

    return-void
.end method


# virtual methods
.method public createBackgroundBlurDrawable(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 35
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubViewRootImpl;->mTranViewRootImpl:Lcom/transsion/hubsdk/view/TranViewRootImpl;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranViewRootImpl;->createBackgroundBlurDrawable(Landroid/view/View;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public createBackgroundBlurDrawable(Landroid/view/View;IIF)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 24
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubViewRootImpl;->mTranViewRootImpl:Lcom/transsion/hubsdk/view/TranViewRootImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/view/TranViewRootImpl;->createBackgroundBlurDrawable(Landroid/view/View;IIF)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public notifyInsetsChanged(Landroid/view/View;)V
    .registers 2

    .line 29
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubViewRootImpl;->mTranViewRootImpl:Lcom/transsion/hubsdk/view/TranViewRootImpl;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/view/TranViewRootImpl;->notifyInsetsChanged(Landroid/view/View;)V

    return-void
.end method
