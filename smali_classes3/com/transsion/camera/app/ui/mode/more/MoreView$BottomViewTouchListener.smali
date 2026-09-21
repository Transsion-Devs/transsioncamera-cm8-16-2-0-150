.class Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/more/MoreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BottomViewTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V
    .registers 2

    .line 1212
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/more/MoreView-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1215
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 1216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1217
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1218
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_ee

    if-eq p2, v2, :cond_17

    goto/16 :goto_fd

    .line 1225
    :cond_17
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I

    move-result p2

    if-ne p2, v2, :cond_6e

    .line 1226
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmBottomViewDownX(Lcom/transsion/camera/app/ui/mode/more/MoreView;)F

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmMoreLinearListView(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_fd

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmMoreLinearListView(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    move-result-object p1

    .line 1227
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_fd

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmBottomViewDownY(Lcom/transsion/camera/app/ui/mode/more/MoreView;)F

    move-result p1

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_fd

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmBottomViewDownY(Lcom/transsion/camera/app/ui/mode/more/MoreView;)F

    move-result p1

    sub-float/2addr v1, p1

    .line 1229
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmBottomViewDownX(Lcom/transsion/camera/app/ui/mode/more/MoreView;)F

    move-result p2

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_fd

    .line 1230
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p0, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$mbackToPreviousMode(Lcom/transsion/camera/app/ui/mode/more/MoreView;I)Z

    goto/16 :goto_fd

    .line 1232
    :cond_6e
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I

    move-result p2

    if-eqz p2, :cond_c8

    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_c8

    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_89

    goto :goto_c8

    .line 1240
    :cond_89
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_9b

    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmScreenFormType(Lcom/transsion/camera/app/ui/mode/more/MoreView;)I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_fd

    .line 1242
    :cond_9b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->mode_picker_main_layout_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 1243
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmMoreBottomView(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 1244
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmBottomViewDownY(Lcom/transsion/camera/app/ui/mode/more/MoreView;)F

    move-result v0

    sub-int/2addr p2, p1

    int-to-float p1, p2

    cmpg-float p2, v0, p1

    if-gez p2, :cond_fd

    cmpg-float p1, v1, p1

    if-gez p1, :cond_fd

    .line 1245
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p0, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$mbackToPreviousMode(Lcom/transsion/camera/app/ui/mode/more/MoreView;I)Z

    goto :goto_fd

    .line 1235
    :cond_c8
    :goto_c8
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 1236
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmMoreLinearListView(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1237
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmBottomViewDownRawY(Lcom/transsion/camera/app/ui/mode/more/MoreView;)F

    move-result v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, p2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_fd

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_fd

    .line 1238
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p0, v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$mbackToPreviousMode(Lcom/transsion/camera/app/ui/mode/more/MoreView;I)Z

    goto :goto_fd

    .line 1220
    :cond_ee
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p2, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fputmBottomViewDownRawY(Lcom/transsion/camera/app/ui/mode/more/MoreView;F)V

    .line 1221
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fputmBottomViewDownX(Lcom/transsion/camera/app/ui/mode/more/MoreView;F)V

    .line 1222
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$BottomViewTouchListener;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fputmBottomViewDownY(Lcom/transsion/camera/app/ui/mode/more/MoreView;F)V

    :cond_fd
    :goto_fd
    return v2
.end method
