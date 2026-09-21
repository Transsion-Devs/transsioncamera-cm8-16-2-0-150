.class Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/PreviewUI5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewMoveHolder"
.end annotation


# instance fields
.field private mCurrentMode:Ljava/lang/String;

.field private mCurrentScene:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

.field private mIsPaused:Z

.field private mPreviewAspectRatio:D

.field private final mScreenManager:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .registers 3

    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 812
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->mIsPaused:Z

    .line 815
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->mScreenManager:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getPreviewMoveDistance(Lcom/transsion/camera/app/common/manager/IScreenManager;)I
    .registers 3

    .line 868
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->mCurrentScene:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->getPreviewMoveDistance(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)I

    move-result p0

    return p0
.end method

.method private getPreviewMoveDistance(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)I
    .registers 6

    .line 881
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviewMoveDistance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", scene = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 882
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->mPreviewAspectRatio:D

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->mCurrentMode:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p0, p2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getPreviewMoveDistance(DLjava/lang/String;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected clone()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 2

    .line 853
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 855
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 807
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->clone()Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;

    move-result-object p0

    return-object p0
.end method

.method public compareTo(Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;)I
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 890
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->mScreenManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/manager/IScreenManager;

    if-nez v1, :cond_18

    .line 892
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[PreviewMoveHolder] compareTo: manager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    .line 895
    :cond_18
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->getPreviewMoveDistance(Lcom/transsion/camera/app/common/manager/IScreenManager;)I

    move-result p0

    .line 896
    invoke-direct {p1, v1}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->getPreviewMoveDistance(Lcom/transsion/camera/app/common/manager/IScreenManager;)I

    move-result p1

    .line 897
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compareTo: distance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lastDistance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 898
    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public getCurrentScene()Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;
    .registers 1

    .line 860
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->mCurrentScene:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    return-object p0
.end method

.method public getPreviewMoveDistance()I
    .registers 2

    .line 864
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->mCurrentScene:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->getPreviewMoveDistance(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)I

    move-result p0

    return p0
.end method

.method public getPreviewMoveDistance(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)I
    .registers 3

    .line 872
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->mScreenManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/manager/IScreenManager;

    if-nez v0, :cond_15

    .line 874
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[PreviewMoveHolder] getPreviewMoveDistance: manager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 877
    :cond_15
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->getPreviewMoveDistance(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)I

    move-result p0

    return p0
.end method

.method public setCurrentMode(Ljava/lang/String;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 2

    .line 833
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->mCurrentMode:Ljava/lang/String;

    return-object p0
.end method

.method public setCurrentScene(Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 4

    .line 819
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->mIsPaused:Z

    if-eqz v0, :cond_5

    return-object p0

    .line 822
    :cond_5
    iput-object p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->mCurrentScene:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    .line 823
    invoke-static {}, Lcom/transsion/camera/app/ui/PreviewUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentScene: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->mCurrentScene:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPausedState(Z)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 2

    .line 838
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->mIsPaused:Z

    return-object p0
.end method

.method public setPreviewAspectRatio(D)Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;
    .registers 3

    .line 828
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->mPreviewAspectRatio:D

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[ mCurrentMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewAspectRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->mPreviewAspectRatio:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentScene: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PreviewUI5$PreviewMoveHolder;->mCurrentScene:Lcom/transsion/camera/app/common/manager/IScreenManager$PreviewMoveScene;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
