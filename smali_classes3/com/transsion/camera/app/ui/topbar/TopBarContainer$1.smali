.class Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmViewMap(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "The top bar is already updated"

    const/4 v2, 0x0

    if-eqz v0, :cond_9f

    .line 77
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onLayout] mAvailableWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmAvailableWidth(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mAvailableHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmAvailableHeight(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmUpdateHelper(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmAvailableWidth(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmAvailableHeight(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->setContainerWidthAndHeight(II)V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_99

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmUpdateHelper(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    move-result-object v3

    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmViewMap(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Ljava/util/Map;

    move-result-object v4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I

    move-result v5

    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmScreenManager(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Lcom/transsion/camera/app/ui/ScreenManager;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_84

    goto :goto_85

    :cond_84
    const/4 v6, 0x0

    :goto_85
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmScreenManager(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Lcom/transsion/camera/app/ui/ScreenManager;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v8

    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmAnimatorListener(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v9

    const/4 v7, 0x1

    .line 80
    invoke-virtual/range {v3 .. v9}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->update(Ljava/util/Map;IZIILandroid/animation/Animator$AnimatorListener;)V

    .line 84
    :cond_99
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v0, v2}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fputmViewMap(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;Ljava/util/Map;)V

    goto :goto_a6

    .line 86
    :cond_9f
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    :goto_a6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmLeftViewMap(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_c9

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmUpdateHelper(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmAvailableWidth(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmAvailableHeight(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->setContainerWidthAndHeight(II)V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v0, v2}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fputmLeftViewMap(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;Ljava/util/Map;)V

    goto :goto_d0

    .line 93
    :cond_c9
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    :goto_d0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmRightViewMap(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f3

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmUpdateHelper(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmAvailableWidth(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fgetmAvailableHeight(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->setContainerWidthAndHeight(II)V

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;->this$0:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-static {p0, v2}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$fputmRightViewMap(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;Ljava/util/Map;)V

    return-void

    .line 100
    :cond_f3
    invoke-static {}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
