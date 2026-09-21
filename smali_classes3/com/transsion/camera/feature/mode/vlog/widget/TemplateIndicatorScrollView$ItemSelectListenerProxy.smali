.class Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$ItemSelectListenerProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemSelectListenerProxy"
.end annotation


# instance fields
.field private onItemSelectedListener:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$ItemSelectListenerProxy;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$ItemSelectListenerProxy;-><init>(Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;II)V
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$ItemSelectListenerProxy;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;

    invoke-static {v0, p2}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->-$$Nest$manimateToTab(Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;I)V

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$ItemSelectListenerProxy;->onItemSelectedListener:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;

    if-eqz p0, :cond_c

    .line 92
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;->onItemSelected(Landroid/view/View;II)V

    :cond_c
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$ItemSelectListenerProxy;->onItemSelectedListener:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;

    return-void
.end method
