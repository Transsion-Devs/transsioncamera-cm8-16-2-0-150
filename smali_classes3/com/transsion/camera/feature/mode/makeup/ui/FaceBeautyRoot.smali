.class public Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/interactive/IFeature;


# static fields
.field private static final CUSTOM_ID_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FACE_BEAUTY_INFO_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private isClickDialog:Z

.field private final mAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

.field private final mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mCameraId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrFeatureKey:Ljava/lang/String;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

.field private mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

.field private mOriginValue:Ljava/lang/String;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static synthetic $r8$lambda$863kzmsMr8X1yx79wyuoxGf1aec(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->lambda$showDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IGYf1x2mstIdu7yuKI_ZSZnsryw(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 176
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmFaceBeautyHelper(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;)Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateUIByInfo(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->updateUIByInfo(Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateValueByInfo(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->updateValueByInfo(Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceBeautyRoot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 73
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->CUSTOM_ID_MAP:Ljava/util/HashMap;

    .line 83
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->FACE_BEAUTY_INFO_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 227
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 62
    const-string p2, ""

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mOriginValue:Ljava/lang/String;

    const/4 p2, 0x0

    .line 71
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->isClickDialog:Z

    .line 228
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    .line 229
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->FACE_BEAUTY_INFO_LIST:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;)V

    invoke-direct {p2, p1, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/makeup/listener/RvListener;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

    return-void
.end method

.method private hideAutoHint()V
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_b

    .line 164
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$showDialog$1(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 178
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    if-eqz p1, :cond_1c

    .line 180
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->restoreDefault()V

    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->isClickDialog:Z

    .line 182
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->updateState()V

    .line 183
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->updateCustomDefault(Z)V

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method private showAutoHint(Ljava/lang/String;)V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_18

    .line 156
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_18
    return-void
.end method

.method private showDialog()V
    .registers 4

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 173
    :cond_f
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_message:I

    .line 175
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_negative_title:I

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$$ExternalSyntheticLambda0;-><init>()V

    .line 176
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_face_beauty_dailog_Positive_title:I

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;)V

    .line 177
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 188
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method private updateState()V
    .registers 3

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->getCurrentItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;

    if-eqz v0, :cond_11

    .line 246
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    iget v0, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->featureId:I

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->updateUIStateByKey(Ljava/lang/String;I)V

    :cond_11
    return-void
.end method

.method private updateUIByInfo(Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;)V
    .registers 11

    if-nez p1, :cond_3

    goto :goto_52

    .line 116
    :cond_3
    iget v0, p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->featureId:I

    if-nez v0, :cond_b

    .line 117
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->showDialog()V

    return-void

    .line 119
    :cond_b
    iget-object p1, p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mCurrFeatureKey:Ljava/lang/String;

    const/4 p1, 0x1

    if-ne v0, p1, :cond_1e

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_ai_enbale:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->showAutoHint(Ljava/lang/String;)V

    goto :goto_21

    .line 123
    :cond_1e
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->hideAutoHint()V

    .line 125
    :goto_21
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mCurrFeatureKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    if-eqz v0, :cond_52

    .line 127
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mCurrFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getFeatureProgress(Ljava/lang/String;)I

    move-result v7

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v0, :cond_52

    const/4 v1, 0x2

    .line 129
    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 130
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v3, "muscle_care"

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    return-void

    .line 134
    :cond_4a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p0, :cond_52

    const/4 v0, 0x3

    .line 135
    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    :cond_52
    :goto_52
    return-void
.end method

.method private updateUIStateByKey(Ljava/lang/String;I)V
    .registers 11

    const/4 v0, 0x1

    if-ne p2, v0, :cond_f

    .line 205
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    sget v0, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$string;->multi_fb_hint_ai_enbale:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->showAutoHint(Ljava/lang/String;)V

    goto :goto_12

    .line 207
    :cond_f
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->hideAutoHint()V

    .line 209
    :goto_12
    sget-object p2, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3c

    .line 210
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    if-eqz p2, :cond_44

    .line 211
    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getFeatureProgress(Ljava/lang/String;)I

    move-result v6

    .line 212
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p1, :cond_44

    .line 213
    iget-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->isClickDialog:Z

    if-nez p2, :cond_2f

    const/4 p2, 0x2

    .line 214
    invoke-interface {p1, p2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 216
    :cond_2f
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v2, "muscle_care"

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(Ljava/lang/String;IIIILjava/lang/String;)V

    return-void

    .line 220
    :cond_3c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p0, :cond_44

    const/4 p1, 0x3

    .line 221
    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    :cond_44
    return-void
.end method

.method private updateValueByInfo(Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;)V
    .registers 4

    if-eqz p1, :cond_2f

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mCameraId:Ljava/lang/String;

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_2f

    .line 146
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    iget v1, p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->featureId:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->updateFeatureId(I)V

    .line 147
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyItemInfo;->key:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 150
    :cond_28
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "aiv2"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_2f
    :goto_2f
    return-void
.end method


# virtual methods
.method public closeContrast(Z)V
    .registers 2

    .line 320
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_9

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mOriginValue:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public hideDialog()V
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .line 252
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 253
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->fb_rv:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 254
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 255
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 254
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/SimpleItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public openContrast()V
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_11

    .line 313
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mOriginValue:Ljava/lang/String;

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "contrast_on"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public progressChanged(I)V
    .registers 4

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    if-eqz v0, :cond_27

    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->CUSTOM_KEY_LIST:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mCurrFeatureKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mCurrFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->updateFeatureProgress(Ljava/lang/String;I)V

    .line 305
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->customDefault()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->updateCustomDefault(Z)V

    .line 306
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method public registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 6

    .line 266
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSettingDevice CameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 267
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 268
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mCameraId:Ljava/lang/String;

    .line 269
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 270
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/app/common/setting/ISetting;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    .line 271
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->initCustomValue(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->getFeatureId()I

    move-result v0

    .line 273
    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->CUSTOM_ID_MAP:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 274
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mCurrFeatureKey:Ljava/lang/String;

    .line 276
    :cond_58
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;->updateSelectedItemById(I)V

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->customDefault()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->updateCustomDefault(Z)V

    .line 278
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$4;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot$4;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;Lcom/transsion/camera/app/common/setting/ISetting;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->of(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 283
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public releaseResource()V
    .registers 1

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 2

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautyHelper:Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;

    if-eqz p0, :cond_7

    .line 199
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/helper/FaceBeautyHelper;->setGender(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V
    .registers 3

    .line 297
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 298
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    return-void
.end method

.method public unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 288
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->hideDialog()V

    .line 289
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->hideAutoHint()V

    const/4 p1, 0x0

    .line 290
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    .line 291
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 292
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public updateFeatureUI(Z)V
    .registers 2

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    .line 328
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->isClickDialog:Z

    .line 329
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->updateState()V

    .line 330
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_c
    const/16 p1, 0x8

    .line 332
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateFeatureUI(ZZ)V
    .registers 3

    .line 0
    return-void
.end method

.method updateLowLight(Z)V
    .registers 2

    .line 261
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyRoot;->mAdapter:Lcom/transsion/camera/feature/mode/makeup/adapter/FaceBeautyAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/RvAdapter;->updateLowLight(Z)V

    return-void
.end method

.method public updateValueChange(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
