.class public Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShutterButtonViewChecker"
.end annotation


# instance fields
.field private final mCenterButtonRect:Landroid/graphics/Rect;

.field private mIsContain:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 367
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;->mIsContain:Z

    .line 368
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;->mCenterButtonRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public isContains(Landroid/graphics/Rect;)Z
    .registers 2

    .line 371
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;->mCenterButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public setFlag(Z)V
    .registers 2

    .line 384
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;->mIsContain:Z

    return-void
.end method

.method public updateCenterButtonRect(Landroid/graphics/Rect;I)V
    .registers 4

    .line 388
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    .line 389
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 390
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;->mCenterButtonRect:Landroid/graphics/Rect;

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 392
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    .line 393
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 394
    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 396
    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    .line 397
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 398
    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 400
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    .line 401
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 402
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public vibrator(Landroid/graphics/Rect;)Z
    .registers 3

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;->mCenterButtonRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    .line 376
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;->mIsContain:Z

    if-ne v0, p1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 379
    :cond_c
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/floatingshutter/FloatingShutterUI$ShutterButtonViewChecker;->mIsContain:Z

    const/4 p0, 0x1

    return p0
.end method
