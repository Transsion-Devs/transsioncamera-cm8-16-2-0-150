.class Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$LayoutStateChangeCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutStateChangeCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Consumer;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;)V
    .registers 2

    .line 315
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$LayoutStateChangeCallback;->this$0:Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$LayoutStateChangeCallback;-><init>(Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;)V

    return-void
.end method


# virtual methods
.method public accept(Landroidx/window/layout/WindowLayoutInfo;)V
    .registers 5

    .line 319
    invoke-virtual {p1}, Landroidx/window/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p1

    .line 320
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/window/layout/DisplayFeature;

    .line 321
    instance-of v1, v0, Landroidx/window/layout/FoldingFeature;

    if-eqz v1, :cond_8

    .line 322
    check-cast v0, Landroidx/window/layout/FoldingFeature;

    invoke-interface {v0}, Landroidx/window/layout/FoldingFeature;->getState()Landroidx/window/layout/FoldingFeature$State;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$LayoutStateChangeCallback;->this$0:Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;

    const-string v2, "FLAT"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x3

    .line 325
    :goto_2f
    invoke-static {v1, v0}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->-$$Nest$fputmScreenFormType(Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;I)V

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$LayoutStateChangeCallback;->this$0:Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_57

    .line 330
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$LayoutStateChangeCallback;->this$0:Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->-$$Nest$fgetmEditorUIManager(Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;)Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$LayoutStateChangeCallback;->this$0:Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->-$$Nest$fgetmEditorUIManager(Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;)Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$LayoutStateChangeCallback;->this$0:Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/editor/EditorUIManager;->onScreenFormChangedHover(I)V

    goto :goto_8

    :cond_57
    :goto_57
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 315
    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/VlogEditorFragment$LayoutStateChangeCallback;->accept(Landroidx/window/layout/WindowLayoutInfo;)V

    return-void
.end method
