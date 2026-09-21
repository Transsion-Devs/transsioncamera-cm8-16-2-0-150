.class public Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI5;
.super Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mParamsUpdater:Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;


# direct methods
.method public static synthetic $r8$lambda$pACpFwieFEZzHtlvLeiIuNEsHQ4(Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 2

    const/16 v0, 0x51

    .line 24
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProModeUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 9

    .line 21
    invoke-direct/range {p0 .. p8}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;-><init>(Landroid/content/Context;ILandroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 22
    new-instance p1, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;-><init>()V

    const/4 p2, -0x2

    .line 23
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->setHeight(I)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI5$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI5$$ExternalSyntheticLambda0;-><init>()V

    .line 24
    const-class p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->addAdapter(Ljava/lang/Class;Lcom/transsion/camera/app/ui/layout/LayoutParamsAdapter;)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI5;->mParamsUpdater:Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    return-void
.end method


# virtual methods
.method protected updateProfessionalLayoutParams(IZZ)V
    .registers 4

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->updateProfessionalLayoutParams(IZZ)V

    .line 30
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mScreenFormType:I

    if-nez p1, :cond_32

    .line 31
    sget-object p1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateProfessionalLayoutParams: mProgressViewRotateLayout = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mProgressViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz p1, :cond_29

    .line 33
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI5;->mParamsUpdater:Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->update(Landroid/view/View;)V

    .line 35
    :cond_29
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->mCaptureStopButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p1, :cond_32

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI5;->mParamsUpdater:Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->update(Landroid/view/View;)V

    :cond_32
    return-void
.end method
