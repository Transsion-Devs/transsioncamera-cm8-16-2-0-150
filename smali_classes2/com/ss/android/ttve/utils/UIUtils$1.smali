.class Lcom/ss/android/ttve/utils/UIUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttve/utils/UIUtils;->expandClickRegion(Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$top:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IIII)V
    .registers 6

    .line 156
    iput-object p1, p0, Lcom/ss/android/ttve/utils/UIUtils$1;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/ss/android/ttve/utils/UIUtils$1;->val$top:I

    iput p3, p0, Lcom/ss/android/ttve/utils/UIUtils$1;->val$bottom:I

    iput p4, p0, Lcom/ss/android/ttve/utils/UIUtils$1;->val$left:I

    iput p5, p0, Lcom/ss/android/ttve/utils/UIUtils$1;->val$right:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 159
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 160
    iget-object v1, p0, Lcom/ss/android/ttve/utils/UIUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 161
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/ss/android/ttve/utils/UIUtils$1;->val$top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 162
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/ss/android/ttve/utils/UIUtils$1;->val$bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 163
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/ss/android/ttve/utils/UIUtils$1;->val$left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 164
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/ss/android/ttve/utils/UIUtils$1;->val$right:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 165
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/ss/android/ttve/utils/UIUtils$1;->val$view:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 168
    iget-object v0, p0, Lcom/ss/android/ttve/utils/UIUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-class v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 169
    iget-object p0, p0, Lcom/ss/android/ttve/utils/UIUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_46
    return-void
.end method
