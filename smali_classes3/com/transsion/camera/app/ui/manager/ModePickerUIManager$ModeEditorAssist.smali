.class Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModeEditorAssist"
.end annotation


# instance fields
.field private mAllModeResources:Ljava/util/List;

.field private mCurrentCameraID:Ljava/lang/String;

.field private mIsSecureCamera:Z

.field private mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

.field private mModesNumberInTab:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/lang/String;)V
    .registers 3

    .line 1907
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1902
    const-string p1, "0"

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    .line 1908
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModesNumberInTab:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public flashModeList()V
    .registers 5

    .line 1984
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    const-string v1, "0"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDataStoreModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1985
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    const-string v2, "1"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDataStoreModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1986
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v2, v0, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->saveARCorePosition([Ljava/lang/String;[Ljava/lang/String;)V

    .line 1987
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mAllModeResources:Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fputmBackCameraModeList(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/util/List;)V

    .line 1988
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mAllModeResources:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fputmFrontCameraModeList(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/util/List;)V

    .line 1989
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flashModeList: backCameraModeList size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmBackCameraModeList(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", frontCameraModeList size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmFrontCameraModeList(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/util/List;

    move-result-object p0

    .line 1990
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1989
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public flashModeListCurrentCamera()V
    .registers 2

    .line 2012
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->updateCurrentCamera(Ljava/lang/String;)V

    return-void
.end method

.method public setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V
    .registers 8

    .line 1912
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mAllModeResources:Ljava/util/List;

    if-eqz p3, :cond_58

    .line 1915
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1916
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mAllModeResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1917
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1918
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/FeatureResource;

    .line 1919
    iget-object v2, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v3, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1920
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1921
    :cond_29
    iget-object v2, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v3, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1922
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1923
    :cond_37
    iget-object v2, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v3, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1924
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1925
    :cond_45
    iget-object v2, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    const-string v3, "com.transsion.camera.feature.mode.gopro.GoProModeEntry"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1926
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1929
    :cond_53
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mAllModeResources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1931
    :cond_58
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    .line 1932
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mIsSecureCamera:Z

    .line 1933
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->flashModeList()V

    .line 1934
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->updateCurrentCamera(Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .registers 10

    .line 1938
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/ModePickerUI;->setIsResumeAfterEdit(Z)V

    .line 1939
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    .line 1941
    new-instance p1, Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    .line 1946
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    .line 1947
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateCurrentCamera] mCurrentCameraID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " facingBack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1948
    const-string v2, "backvlogposition"

    const/4 v3, -0x1

    if-eqz v0, :cond_89

    .line 1949
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "backarcoreposition"

    invoke-virtual {p1, v6, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1950
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "backmovieposition"

    invoke-virtual {p1, v7, v5, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1951
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v2, v3, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1952
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModesNumberInTab:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "backmainmodescount"

    invoke-virtual {p1, v7, v3, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_cd

    .line 1954
    :cond_89
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "frontarcoreposition"

    invoke-virtual {p1, v6, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1955
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "frontmovieposition"

    invoke-virtual {p1, v7, v5, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1956
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v2, v3, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1957
    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mModesNumberInTab:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "frontmainmodescount"

    invoke-virtual {p1, v7, v3, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1960
    :goto_cd
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mIsSecureCamera:Z

    const/4 v6, 0x0

    if-eqz v3, :cond_da

    add-int/lit8 v7, p1, 0x1

    if-ge v4, v7, :cond_da

    if-lez v4, :cond_da

    move v4, v1

    goto :goto_db

    :cond_da
    move v4, v6

    :goto_db
    if-eqz v3, :cond_e5

    if-lez v5, :cond_e5

    add-int/lit8 v7, p1, 0x1

    if-ge v5, v7, :cond_e5

    move v5, v1

    goto :goto_e6

    :cond_e5
    move v5, v6

    :goto_e6
    if-eqz v3, :cond_ef

    if-lez v2, :cond_ef

    add-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_ef

    goto :goto_f0

    :cond_ef
    move v1, v6

    :goto_f0
    if-eqz v0, :cond_101

    .line 1975
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmBackCameraModeList(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/util/List;

    move-result-object v0

    sub-int/2addr p1, v4

    sub-int/2addr p1, v5

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V

    goto :goto_10f

    .line 1977
    :cond_101
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmFrontCameraModeList(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/util/List;

    move-result-object v0

    sub-int/2addr p1, v4

    sub-int/2addr p1, v5

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V

    .line 1980
    :goto_10f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/ModePickerUI;->setIsResumeAfterEdit(Z)V

    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;ILjava/lang/String;)V
    .registers 8

    .line 1994
    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mCurrentCameraID:Ljava/lang/String;

    .line 1995
    invoke-static {p3}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    .line 1996
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateCurrentModes] camera:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " facingBack:"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_60

    .line 1998
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p3, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fputmBackCameraModeList(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/util/List;)V

    .line 1999
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePanelUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mAllModeResources:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, p1, v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 2000
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object p3, p3, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p3, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 2001
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmBackDefaultMode(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmBackRestoreMode(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v0, v1, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_97

    .line 2003
    :cond_60
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p3, v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fputmFrontCameraModeList(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;Ljava/util/List;)V

    .line 2004
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePanelUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/IModePanelUI;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->mAllModeResources:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmCamera(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, p1, v0, v1}, Lcom/transsion/camera/app/ui/IModePanelUI;->setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 2005
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    iget-object p3, p3, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p3, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 2006
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmModePickerUI(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Lcom/transsion/camera/app/ui/ModePickerUI;

    move-result-object p3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmFrontDefaultMode(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmFrontRestoreMode(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v0, v1, p2}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModes(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2008
    :goto_97
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager$ModeEditorAssist;->this$0:Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2, p2}, Lcom/transsion/camera/app/ui/manager/ModePickerUIManager;->updateCurrentMode(Ljava/lang/String;ZZZ)V

    return-void
.end method
