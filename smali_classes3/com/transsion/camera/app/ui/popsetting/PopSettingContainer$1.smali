.class Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$fgetmViewMap(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "The pop setting container is already updated"

    const/4 v2, 0x0

    if-eqz v0, :cond_52

    .line 65
    invoke-static {}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onLayout] mAvailableWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$fgetmAvailableWidth(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mAvailableHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$fgetmAvailableHeight(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$fgetmUpdateHelper(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$fgetmAvailableWidth(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$fgetmAvailableHeight(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->setContainerWidthAndHeight(II)V

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-static {v0, v2}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$fputmViewMap(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;Ljava/util/Map;)V

    goto :goto_59

    .line 71
    :cond_52
    invoke-static {}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 74
    :goto_59
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$fgetmLeftViewMap(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$fgetmUpdateHelper(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$fgetmAvailableWidth(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-static {v4}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$fgetmAvailableHeight(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->setContainerWidthAndHeight(II)V

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-static {v0, v2}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$fputmLeftViewMap(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;Ljava/util/Map;)V

    goto :goto_83

    .line 78
    :cond_7c
    invoke-static {}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    :goto_83
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$fgetmRightViewMap(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$fgetmUpdateHelper(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$fgetmAvailableWidth(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)I

    move-result v1

    iget-object v3, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$fgetmAvailableHeight(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->setContainerWidthAndHeight(II)V

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer$1;->this$0:Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    invoke-static {p0, v2}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$fputmRightViewMap(Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;Ljava/util/Map;)V

    return-void

    .line 85
    :cond_a6
    invoke-static {}, Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
