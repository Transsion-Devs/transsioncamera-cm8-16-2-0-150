.class Lcom/transsion/widgetslib/view/damping/DampingLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/DampingLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$1;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$1;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # invokes: Lcom/transsion/widgetslib/view/damping/DampingLayout;->initUpOverScroll()V
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$000(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    return-void
.end method
