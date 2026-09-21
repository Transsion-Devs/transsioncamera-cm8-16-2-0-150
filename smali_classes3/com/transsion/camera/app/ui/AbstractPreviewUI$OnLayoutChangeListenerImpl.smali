.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLayoutChangeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V
    .registers 2

    .line 1818
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Lcom/transsion/camera/app/ui/AbstractPreviewUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1825
    new-instance p6, Landroid/graphics/Rect;

    invoke-direct {p6, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1826
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmRelativePreviewRect(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2, p6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_85

    .line 1827
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmRelativePreviewRect(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1828
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmAbsolutePreviewRect(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1829
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p2

    float-to-int p2, p2

    .line 1830
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    float-to-int p1, p1

    if-nez p2, :cond_31

    if-eqz p1, :cond_3c

    .line 1832
    :cond_31
    iget-object p3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmAbsolutePreviewRect(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/graphics/Rect;

    move-result-object p3

    neg-int p4, p2

    neg-int p5, p1

    invoke-virtual {p3, p4, p5}, Landroid/graphics/Rect;->offset(II)V

    .line 1834
    :cond_3c
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onLayoutChange mRelativePreviewRect:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p5}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmRelativePreviewRect(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/graphics/Rect;

    move-result-object p5

    invoke-virtual {p5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ",mAbsolutePreviewRect:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p5}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmAbsolutePreviewRect(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/graphics/Rect;

    move-result-object p5

    .line 1835
    invoke-virtual {p5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ",translationX:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",translationY:"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1834
    invoke-static {p3, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1837
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$OnLayoutChangeListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$mnotifyPreviewRectChanged(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)V

    :cond_85
    return-void
.end method
