.class Lcom/transsion/camera/app/ui/PopSettingUI$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/PopSettingUI;->scrollPopSettingItemToCenter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

.field final synthetic val$translateX:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/PopSettingUI;I)V
    .registers 3

    .line 2272
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI$13;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    iput p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI$13;->val$translateX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 2275
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$13;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmTreasureBoxScrollView(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2276
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$13;->this$0:Lcom/transsion/camera/app/ui/PopSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->-$$Nest$fgetmTreasureBoxScrollView(Lcom/transsion/camera/app/ui/PopSettingUI;)Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;

    move-result-object v0

    iget p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI$13;->val$translateX:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method
