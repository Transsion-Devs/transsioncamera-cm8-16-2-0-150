.class Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;Ljava/lang/String;)V
    .registers 3

    .line 87
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;)F
    .registers 2

    .line 90
    # getter for: Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrY:I
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->access$000(Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    .line 87
    check-cast p1, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller$1;->getValue(Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;F)V
    .registers 3

    .line 95
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    float-to-int p1, p2

    # setter for: Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->mCurrY:I
    invoke-static {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;->access$002(Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;I)I

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 87
    check-cast p1, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller$1;->setValue(Lcom/transsion/widgetslib/widget/timepicker/wheel/FixedScroller;F)V

    return-void
.end method
