.class public Lcom/transsion/widgetslib/dialog/PromptDialog$Builder2;
.super Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/PromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder2"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x0

    .line 583
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder2;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4

    .line 587
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x3

    if-eq p3, p1, :cond_d

    const/4 p1, 0x0

    .line 598
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 599
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    :cond_d
    return-void
.end method
