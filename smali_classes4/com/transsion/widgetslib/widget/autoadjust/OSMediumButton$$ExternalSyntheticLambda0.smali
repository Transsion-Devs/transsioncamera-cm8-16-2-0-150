.class public final synthetic Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/autoadjust/OSMediumButton;->updateLayoutToVertical()V

    return-void
.end method
