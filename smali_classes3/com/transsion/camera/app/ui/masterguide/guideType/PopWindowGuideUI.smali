.class public Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;
.super Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;
.source "SourceFile"


# instance fields
.field private mAnimResName:Ljava/lang/String;

.field private mAnimThumbnailId:I

.field private mDescriptionTextColorId:I

.field private mDescriptionTextId:I

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mIconInDescriptionId:I

.field private mPopWindowContentRoot:Landroid/widget/LinearLayout;

.field private mPopWindowGuideLayout:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$WCglpdBkjsepezQAPdrkAuOmxOc(Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->lambda$showDialog$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dktLfLJ6xsZLezxv0H6fAhF2RPs(Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;Landroid/content/DialogInterface;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->lambda$showDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r1QHqbyMIc-hG-wB5dRfjo24tqY(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 70
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;Lcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 6

    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;Lcom/transsion/camera/app/common/storage/DataStore;)V

    return-void
.end method

.method private createGuideView()Landroid/view/View;
    .registers 5

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mPopWindowContentRoot:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5a

    iget v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mDescriptionTextColorId:I

    if-eqz v1, :cond_5a

    iget v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mIconInDescriptionId:I

    if-eqz v1, :cond_5a

    iget v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mAnimThumbnailId:I

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mAnimResName:Ljava/lang/String;

    if-nez v1, :cond_15

    goto :goto_5a

    .line 104
    :cond_15
    sget v1, Lcom/transsion/camera/R$id;->pop_window_guide_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mPopWindowContentRoot:Landroid/widget/LinearLayout;

    sget v2, Lcom/transsion/camera/R$id;->pop_window_guide_video_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/AutoPlayVapView;

    .line 106
    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mDescriptions:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mDescriptionTextColorId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mIconInDescriptionId:I

    invoke-static {v2, v0, v3}, Lcom/transsion/camera/utils/UIUtils;->replaceTextViewWithIcon(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mAnimThumbnailId:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mAnimResName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/ui/widget/AutoPlayVapView;->startPlay(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mPopWindowContentRoot:Landroid/widget/LinearLayout;

    return-object p0

    :cond_5a
    :goto_5a
    const/4 p0, 0x0

    return-object p0
.end method

.method private hideDialog()V
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    return-void
.end method

.method private synthetic lambda$showDialog$1(Landroid/content/DialogInterface;)V
    .registers 2

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    const/16 p1, 0x152

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method private synthetic lambda$showDialog$2(Landroid/content/DialogInterface;)V
    .registers 2

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mMasterGuideUIManager:Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;

    const/16 p1, 0x153

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method private removeView(Landroid/view/View;)V
    .registers 3

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 85
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    .line 86
    check-cast p0, Landroid/view/ViewGroup;

    .line 87
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public hideGuideView()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mPopWindowContentRoot:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_c

    const/16 v1, 0x8

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->hideDialog()V

    :cond_c
    return-void
.end method

.method public inflateView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 5

    if-eqz p1, :cond_27

    if-eqz p2, :cond_27

    if-nez p3, :cond_7

    goto :goto_27

    .line 46
    :cond_7
    sget p1, Lcom/transsion/camera/R$layout;->pop_window_ui_layout:I

    const/4 v0, 0x1

    invoke-virtual {p3, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 47
    sget p2, Lcom/transsion/camera/R$id;->pop_window_guide_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mPopWindowGuideLayout:Landroid/widget/LinearLayout;

    .line 48
    sget p2, Lcom/transsion/camera/R$id;->pop_window_guide_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mPopWindowContentRoot:Landroid/widget/LinearLayout;

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mRootView:Landroid/view/View;

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mPopWindowGuideLayout:Landroid/widget/LinearLayout;

    return-object p0

    :cond_27
    :goto_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public setSettingResourceId(IIIILjava/lang/String;)V
    .registers 6

    .line 115
    iput p1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mDescriptionTextId:I

    .line 116
    iput p2, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mDescriptionTextColorId:I

    .line 117
    iput p3, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mIconInDescriptionId:I

    .line 118
    iput p4, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mAnimThumbnailId:I

    .line 119
    iput-object p5, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mAnimResName:Ljava/lang/String;

    return-void
.end method

.method public showDialog()V
    .registers 4

    .line 62
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->hideDialog()V

    .line 63
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/AbstractMasterGuideUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    iget-object v1, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mPopWindowContentRoot:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->removeView(Landroid/view/View;)V

    .line 66
    sget v1, Lcom/transsion/camera/R$string;->master_guide_motion_capture_mode_guide_title:I

    .line 67
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->createGuideView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$string;->master_guide_motion_capture_dialog_btn_text:I

    new-instance v2, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI$$ExternalSyntheticLambda0;-><init>()V

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 74
    new-instance v1, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    new-instance v1, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method public showGuideView()V
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->mPopWindowContentRoot:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/masterguide/guideType/PopWindowGuideUI;->showDialog()V

    :cond_b
    return-void
.end method
