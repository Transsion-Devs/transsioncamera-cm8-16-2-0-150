.class public abstract Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/mode/IModeOrderPolicy;


# instance fields
.field protected mBackCameraModeList:Ljava/util/List;

.field protected mBackPanelModeList:Ljava/util/List;

.field protected mBackTabModeList:Ljava/util/List;

.field protected mFrontCameraModeList:Ljava/util/List;

.field protected mFrontPanelModeList:Ljava/util/List;

.field protected mFrontTabModeList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static removeMode(Ljava/util/List;Ljava/lang/String;)Lcom/transsion/camera/app/common/FeatureResource;
    .registers 5

    .line 93
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    .line 94
    :cond_5
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 95
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/FeatureResource;

    .line 96
    iget-object v2, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 97
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    move-object v0, v1

    goto :goto_5

    :cond_1e
    return-object v0
.end method


# virtual methods
.method protected generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 9

    .line 70
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2a

    aget-object v2, p1, v1

    .line 73
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/FeatureResource;

    .line 74
    iget-object v5, v4, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 75
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2a
    return-object p0
.end method

.method public getCameraModes(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 38
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mBackCameraModeList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 41
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mFrontCameraModeList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPanelModes(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 56
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mBackPanelModeList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 59
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mFrontPanelModeList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTabModes(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    .line 47
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mBackTabModeList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 50
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/mode/BaseModeOrderPolicy;->mFrontTabModeList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
