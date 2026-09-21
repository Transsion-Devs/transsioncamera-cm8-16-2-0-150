.class Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;


# direct methods
.method public static synthetic $r8$lambda$VqlW__h4xGWYPZy51_ZLgy-azFQ(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;->lambda$onAbsolutePreviewRectChanged$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$z2xtZzS61iW6z1GvkrMx95I789A(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;->lambda$onRelativePreviewRectChanged$1()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAbsolutePreviewRectChanged$0()V
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$mupdatePreviewShot(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)V

    return-void
.end method

.method private synthetic lambda$onRelativePreviewRectChanged$1()V
    .registers 1

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$mupdatePreviewShot(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)V

    return-void
.end method


# virtual methods
.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 5

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmTag(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAbsolutePreviewRectChanged absoluteRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_43

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmPreviewShotContainer(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroidx/cardview/widget/CardView;

    move-result-object v0

    if-nez v0, :cond_2b

    goto :goto_43

    .line 206
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmPreviewShotContainer(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroidx/cardview/widget/CardView;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 202
    :cond_43
    :goto_43
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmTag(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAbsolutePreviewRectChanged mPreviewShotContainer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmPreviewShotContainer(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroidx/cardview/widget/CardView;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 5

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmTag(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRelativePreviewRectChanged absoluteRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_43

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmPreviewShotContainer(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroidx/cardview/widget/CardView;

    move-result-object v0

    if-nez v0, :cond_2b

    goto :goto_43

    .line 219
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 221
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmPreviewShotContainer(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroidx/cardview/widget/CardView;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 215
    :cond_43
    :goto_43
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmTag(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRelativePreviewRectChanged mPreviewShotContainer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI$2;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;->-$$Nest$fgetmPreviewShotContainer(Lcom/transsion/camera/featurelibs/aicommon/ui/IndicatorUI;)Landroidx/cardview/widget/CardView;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
