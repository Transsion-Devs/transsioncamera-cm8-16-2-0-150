.class Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModePickerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrentModeUI"
.end annotation


# instance fields
.field private final mCancel:Landroid/widget/ImageView;

.field private final mModeName:Landroid/widget/TextView;

.field private final mRoot:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$mhide(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->hide()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misVisible(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->isVisible()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetAlpha(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;F)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->setAlpha(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEnable(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->setEnable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetOnClickListener(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshow(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->show(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRotation(Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->updateRotation(I)V

    return-void
.end method

.method private constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .registers 4

    .line 2865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2866
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->mRoot:Landroid/view/View;

    .line 2867
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->mModeName:Landroid/widget/TextView;

    .line 2868
    iput-object p3, p0, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->mCancel:Landroid/widget/ImageView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/transsion/camera/app/ui/ModePickerUI-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-void
.end method

.method private hide()V
    .registers 2

    .line 2890
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->mRoot:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private isVisible()Z
    .registers 1

    .line 2876
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->mRoot:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private setAlpha(F)V
    .registers 2

    .line 2886
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->mRoot:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setEnable(Z)V
    .registers 2

    .line 2894
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 2872
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private show(Ljava/lang/String;)V
    .registers 3

    .line 2880
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->mModeName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2881
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->mRoot:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2882
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->mRoot:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private updateRotation(I)V
    .registers 6

    .line 2898
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->mModeName:Landroid/widget/TextView;

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_9

    const/high16 v2, 0x43340000    # 180.0f

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    .line 2899
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->mModeName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->mode_picker_name_left_margin:I

    .line 2900
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 2901
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->mModeName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    if-ne p1, v1, :cond_2a

    .line 2903
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$CurrentModeUI;->mModeName:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2a
    return-void
.end method
