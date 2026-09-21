.class Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 5

    .line 91
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmTranslationInterval(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fputmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)V

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$000(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_ed

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$100(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_be

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_8f

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_5f

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_54

    .line 116
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmScanViewHeight(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fputmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)V

    .line 118
    :cond_54
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$msetTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;II)V

    goto/16 :goto_126

    .line 108
    :cond_5f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_84

    .line 109
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmScanViewHeight(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fputmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)V

    .line 111
    :cond_84
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v0

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$msetTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;II)V

    goto/16 :goto_126

    .line 102
    :cond_8f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_b4

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmScanViewHeight(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fputmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)V

    .line 105
    :cond_b4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$msetTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;II)V

    goto :goto_126

    .line 96
    :cond_be
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_e3

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmScanViewHeight(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fputmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)V

    .line 99
    :cond_e3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v0

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$msetTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;II)V

    goto :goto_126

    .line 121
    :cond_ed
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$200(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_11d

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    .line 122
    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->access$300(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_100

    goto :goto_11d

    .line 125
    :cond_100
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmTranslationEnd(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v0

    if-le p1, v0, :cond_113

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fputmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;I)V

    .line 128
    :cond_113
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$msetTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;II)V

    goto :goto_126

    .line 123
    :cond_11d
    :goto_11d
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)I

    move-result v0

    invoke-static {p1, v0, v1}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$msetTranslation(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;II)V

    .line 130
    :goto_126
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI$1;->this$0:Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;->-$$Nest$fgetmSkyScannerView(Lcom/transsion/camera/ui/setting/magicsky/MagicSkyScannerUI;)Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/magicsky/widget/SkyScannerView;->startAnim()V

    return-void
.end method
