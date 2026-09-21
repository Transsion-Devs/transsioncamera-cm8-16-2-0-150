.class public Lcom/transsion/widgetslib/dialog/OSLoadingDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/OSLoadingDialog$Builder;
    }
.end annotation


# instance fields
.field private mOsLoading:Lcom/transsion/widgetslib/view/OSLoadingView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILcom/transsion/widgetslib/dialog/OSLoadingDialog$1;)V
    .registers 4

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/OSLoadingDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$102(Lcom/transsion/widgetslib/dialog/OSLoadingDialog;Lcom/transsion/widgetslib/view/OSLoadingView;)Lcom/transsion/widgetslib/view/OSLoadingView;
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog;->mOsLoading:Lcom/transsion/widgetslib/view/OSLoadingView;

    return-object p1
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 31
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 32
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog;->mOsLoading:Lcom/transsion/widgetslib/view/OSLoadingView;

    if-eqz v0, :cond_d

    .line 33
    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OSLoadingView;->release()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSLoadingDialog;->mOsLoading:Lcom/transsion/widgetslib/view/OSLoadingView;

    :cond_d
    return-void
.end method
