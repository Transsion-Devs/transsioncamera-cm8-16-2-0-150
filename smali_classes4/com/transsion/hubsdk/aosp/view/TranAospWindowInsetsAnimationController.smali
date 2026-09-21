.class public Lcom/transsion/hubsdk/aosp/view/TranAospWindowInsetsAnimationController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranWindowInsetsAnimationControllerAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setInsetsAndAlpha(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;FFZZ)V
    .registers 7

    .line 23
    invoke-interface {p1, p2, p3, p4}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    return-void
.end method
