.class Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$1;->this$0:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout$1;->this$0:Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;

    # invokes: Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->handleFilter()Z
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;->access$000(Lcom/transsion/widgetslib/widget/tablayout/OSTabLayout;)Z

    return-void
.end method
