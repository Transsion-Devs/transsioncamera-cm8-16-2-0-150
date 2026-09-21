.class public Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;
.implements Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IEditorListener;
.implements Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$ISegmentListener;


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mEditorUI:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;

.field private mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

.field private mSecondEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_EditorManage"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;Lcom/transsion/camera/feature/mode/vlog/VlogHelper;II)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;",
            ">;",
            "Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;",
            "Lcom/transsion/camera/feature/mode/vlog/VlogHelper;",
            "II)V"
        }
    .end annotation

    move/from16 v11, p8

    move/from16 v10, p9

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    invoke-direct {v0, p2, v11, v10}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;-><init>(III)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    .line 31
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;

    move-object v9, p0

    move-object v7, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v8, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v11}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;-><init>(Landroid/content/Context;IZLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/transsion/camera/feature/mode/vlog/VlogHelper;Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IComposeStateListener;Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IBackListener;Lcom/transsion/camera/feature/mode/vlog/editor/IEditorUI$IEditorListener;II)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mEditorUI:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;

    if-eqz p3, :cond_2b

    .line 34
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-direct {p2, p1, v10, v11, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;-><init>(Landroid/content/Context;IILcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$ISegmentListener;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mSecondEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    :cond_2b
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->destroy()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    .line 69
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mEditorUI:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->destroy()V

    .line 70
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mEditorUI:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mSecondEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    if-eqz p0, :cond_16

    .line 73
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->unInit()V

    :cond_16
    return-void
.end method

.method public init(Landroid/view/ViewGroup;)V
    .registers 4

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->inflate(Landroid/view/ViewGroup;Z)V

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mEditorUI:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->init(Landroid/view/ViewGroup;)V

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mSecondEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    if-eqz p0, :cond_12

    .line 43
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->init(Landroid/view/ViewGroup;)V

    :cond_12
    return-void
.end method

.method public isLoadingShow()Z
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 98
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->isShowing()Z

    move-result p0

    return p0
.end method

.method public onBackPressed()Z
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mSecondEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    if-eqz v0, :cond_c

    .line 79
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 83
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mEditorUI:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onComposeCompleted()V
    .registers 1

    return-void
.end method

.method public onComposePaused()V
    .registers 1

    return-void
.end method

.method public onComposeStarted()V
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    if-eqz p0, :cond_7

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->startAnimation()V

    :cond_7
    return-void
.end method

.method public onFirstFrameRendered()V
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    if-nez p0, :cond_5

    return-void

    .line 121
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->stopAnimation()V

    return-void
.end method

.method public onRefreshSourceStartTime(JI)V
    .registers 4

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mEditorUI:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->onRefreshSourceStartTime(JI)V

    return-void
.end method

.method public onScreenFormChanged(I)V
    .registers 4

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mEditorUI:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;

    if-nez v1, :cond_9

    goto :goto_11

    .line 147
    :cond_9
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->onScreenFormChanged(I)V

    .line 148
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mEditorUI:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->onScreenFormChanged(I)V

    :cond_11
    :goto_11
    return-void
.end method

.method public onScreenFormChangedHover(I)V
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mEditorUI:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;

    if-eqz v0, :cond_7

    .line 153
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->onScreenFormChangedHover(I)V

    .line 156
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mSecondEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    if-eqz p0, :cond_f

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->onScreenFormChanged(IZ)V

    :cond_f
    return-void
.end method

.method public onSegmentEditClick(Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;I)V
    .registers 3

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mSecondEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    if-eqz p0, :cond_7

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->enter(Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;I)V

    :cond_7
    return-void
.end method

.method public pause()V
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->pause()V

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mEditorUI:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->pause()V

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mSecondEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    if-eqz p0, :cond_11

    .line 61
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->pause()V

    :cond_11
    return-void
.end method

.method public resume()V
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->resume()V

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mEditorUI:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->resume()V

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mSecondEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    if-eqz p0, :cond_11

    .line 52
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->resume()V

    :cond_11
    return-void
.end method

.method public updateOrientation(I)V
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mLoadingUI:Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mEditorUI:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;

    if-nez v1, :cond_9

    goto :goto_19

    .line 134
    :cond_9
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->updateOrientation(I)V

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mEditorUI:Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUI;->updateOrientation(I)V

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->mSecondEditUI:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    if-eqz p0, :cond_19

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->updateOrientation(IZ)V

    :cond_19
    :goto_19
    return-void
.end method
