.class public Lcom/transsion/camera/app/ui/ScreenManager5;
.super Lcom/transsion/camera/app/ui/ScreenManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;,
        Lcom/transsion/camera/app/ui/ScreenManager5$UIScaleInfo;
    }
.end annotation


# static fields
.field private static final PREVIEW_AND_SHUTTER_BUTTON_BOTTOM_MARGIN:I = 0x2a

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/ScreenManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ScreenManager5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ScreenManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScreenManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getBottomBarTopPadding()I
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getModePickerMarginBottom()I

    move-result p0

    return p0
.end method

.method public getBottomHeight()I
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getModePickerMarginBottom()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getShutterBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getShutterBarMarginBottom()I

    move-result p0

    add-int/2addr v0, p0

    .line 83
    sget-object p0, Lcom/transsion/camera/app/ui/ScreenManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBottomHeight: height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public getModePickerMainLayoutHeight()I
    .registers 4

    .line 76
    sget-object v0, Lcom/transsion/camera/app/ui/ScreenManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModePickerMainLayoutHeight: height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getModePickerHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getModePickerHeight()I

    move-result p0

    return p0
.end method

.method public getModePlusBottomBarHeight()I
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getModePickerMarginTop()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getModePickerHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getModePickerMarginBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    .line 95
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getShutterBarHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getShutterBarMarginBottom()I

    move-result p0

    add-int/2addr v0, p0

    .line 96
    sget-object p0, Lcom/transsion/camera/app/ui/ScreenManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModePlusBottomBarHeight: height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public getNavigationHeight()I
    .registers 4

    .line 158
    invoke-super {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getNavigationHeight()I

    move-result p0

    .line 159
    sget-object v0, Lcom/transsion/camera/app/ui/ScreenManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNavigationHeight: height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public getOriginTopBarHeight()I
    .registers 4

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getToolBarHeight()I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getToolBarMarginTop()I

    move-result p0

    add-int/2addr v0, p0

    .line 64
    sget-object p0, Lcom/transsion/camera/app/ui/ScreenManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOriginTopBarHeight: height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public getPopSettingBackUIMarginBottom(I)I
    .registers 8

    .line 151
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getPopSettingBackUIMarginBottom(I)I

    move-result p1

    .line 152
    sget-object v0, Lcom/transsion/camera/app/ui/ScreenManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPopSettingUIMarginBottom: height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", new: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager5;->getModePlusBottomBarHeight()I

    move-result p1

    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/app/ui/ScreenManager5;->getPreviewMoveDistance(D)I

    move-result v4

    add-int/2addr p1, v4

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e76872b    # 0.24075f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager5;->getModePlusBottomBarHeight()I

    move-result p1

    invoke-virtual {p0, v2, v3}, Lcom/transsion/camera/app/ui/ScreenManager5;->getPreviewMoveDistance(D)I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3dac8b44    # 0.08425f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public getPopSettingUIHeight(I)I
    .registers 4

    .line 136
    sget-object p1, Lcom/transsion/camera/app/ui/ScreenManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPopSettingUIHeight: height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getPopSettingUIHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getPopSettingUIHeight()I

    move-result p0

    return p0
.end method

.method public getPopSettingUIMarginBottom(I)I
    .registers 4

    .line 143
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager5;->getModePlusBottomBarHeight()I

    move-result p1

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/ScreenManager5;->getPreviewMoveDistance(D)I

    move-result v0

    add-int/2addr p1, v0

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ScreenManager5;->getPopSettingUIHeight(I)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getPopSettingUIMarginTop()I

    move-result p0

    sub-int/2addr p1, p0

    .line 145
    sget-object p0, Lcom/transsion/camera/app/ui/ScreenManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPopSettingUIMarginBottom: height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p1
.end method

.method public getPreviewMoveDistance(D)I
    .registers 5

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 121
    invoke-static {p1, p2, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 124
    const-string v0, ""

    sget-object v1, Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;->PREVIEW_MOVE_SCENE_BY_POP:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/transsion/camera/app/ui/ScreenManager5;->getPreviewMoveDistance(DLjava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)I

    move-result p0

    return p0

    .line 122
    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "getPreviewMoveDistance: params is empty"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPreviewMoveDistance(DLjava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)I
    .registers 8

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getPreviewMoveDistance(DLjava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)I

    move-result p0

    .line 130
    sget-object v0, Lcom/transsion/camera/app/ui/ScreenManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviewMoveDistance: distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ratio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", mode: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", scene: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public getShutterButtonHeight()I
    .registers 4

    .line 102
    sget-object v0, Lcom/transsion/camera/app/ui/ScreenManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShutterButtonHeight: height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getShutterBarHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getShutterBarHeight()I

    move-result p0

    return p0
.end method

.method public getShutterButtonMarginBottom()I
    .registers 4

    .line 108
    sget-object v0, Lcom/transsion/camera/app/ui/ScreenManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShutterButtonMarginBottom: height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getShutterBarMarginBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getShutterBarMarginBottom()I

    move-result p0

    return p0
.end method

.method public getShutterPanelBasePaddingHeight()I
    .registers 4

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getShutterBarMarginBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager5;->getNavigationHeight()I

    move-result p0

    sub-int/2addr v0, p0

    .line 115
    sget-object p0, Lcom/transsion/camera/app/ui/ScreenManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShutterPanelBasePaddingHeight: height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public getToolBarOriginPaddingHeight()I
    .registers 4

    .line 70
    sget-object v0, Lcom/transsion/camera/app/ui/ScreenManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getToolBarOriginPaddingHeight: height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getToolBarMarginTop()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getToolBarMarginTop()I

    move-result p0

    return p0
.end method

.method public getTopBarHeight()I
    .registers 6

    .line 43
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getPreviewRatio()D

    move-result-wide v0

    .line 44
    sget-object v2, Lcom/transsion/camera/app/ui/ScreenManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTopBarHeight: previewRatio = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/ScreenManager5;->getTopBarHeight(D)I

    move-result p0

    return p0
.end method

.method public getTopBarHeight(D)I
    .registers 7

    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 51
    invoke-static {p1, p2, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 52
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, p1

    sub-double/2addr v0, v2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    .line 53
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getShutterBarMarginBottom()I

    move-result p0

    add-int/lit8 p0, p0, -0x2a

    int-to-double p0, p0

    sub-double/2addr v0, p0

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    goto :goto_3b

    .line 55
    :cond_27
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getToolBarHeight()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getToolBarMarginTop()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;->getToolBarMarginBottom()I

    move-result p0

    add-int/2addr p0, p1

    .line 57
    :goto_3b
    sget-object p1, Lcom/transsion/camera/app/ui/ScreenManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTopBarHeight: height: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public updateScreenFormType(I)Z
    .registers 5

    .line 29
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/ScreenManager;->updateScreenFormType(I)Z

    move-result p1

    .line 30
    new-instance v0, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    return p1
.end method

.method public updateScreenFormType(Landroid/content/Context;IZ)Z
    .registers 5

    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/ScreenManager;->updateScreenFormType(Landroid/content/Context;IZ)Z

    move-result p1

    .line 37
    new-instance p2, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result p3

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v0

    invoke-direct {p2, p3, v0}, Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;-><init>(II)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/ScreenManager5;->mUIInfo:Lcom/transsion/camera/app/ui/ScreenManager5$UIInfo;

    return p1
.end method
