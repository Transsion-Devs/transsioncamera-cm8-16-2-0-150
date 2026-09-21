.class Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;-><init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

.field final synthetic val$this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;Lcom/transsion/widgetslib/widget/tablayout/TabLayout;)V
    .registers 3

    .line 2311
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$1;->this$1:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView$1;->val$this$0:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2315
    check-cast p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$800(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    .line 2316
    # getter for: Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->textView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$800(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Landroid/widget/TextView;

    move-result-object p0

    .line 2317
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_18

    .line 2318
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_28

    .line 2319
    :cond_18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v1, :cond_25

    .line 2320
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_28

    .line 2321
    :cond_25
    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_28
    :goto_28
    return v0
.end method
