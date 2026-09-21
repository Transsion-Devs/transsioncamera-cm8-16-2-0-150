.class public final Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/OSSnackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMOSSnackbar()Lcom/transsion/widgetslib/dialog/OSSnackbar;
    .registers 1

    .line 28
    # getter for: Lcom/transsion/widgetslib/dialog/OSSnackbar;->mOSSnackbar:Lcom/transsion/widgetslib/dialog/OSSnackbar;
    invoke-static {}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->access$getMOSSnackbar$cp()Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object p0

    return-object p0
.end method

.method public makeText(Landroid/content/Context;II)Lcom/transsion/widgetslib/dialog/OSSnackbar;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "context.resources.getString(resId)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object p0

    return-object p0
.end method

.method public makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/OSSnackbar;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x7d0

    .line 36
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/transsion/widgetslib/dialog/OSSnackbar;
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;->getMOSSnackbar()Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->dismiss()V

    goto :goto_17

    :catchall_15
    move-exception p1

    goto :goto_35

    .line 42
    :cond_17
    :goto_17
    new-instance v0, Lcom/transsion/widgetslib/dialog/OSSnackbar;

    invoke-direct {v0}, Lcom/transsion/widgetslib/dialog/OSSnackbar;-><init>()V

    .line 43
    new-instance v1, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;

    sget v2, Lcom/transsion/widgetslib/R$style;->OSSnackBarStyle:I

    invoke-direct {v1, p1, v2, p3}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;-><init>(Landroid/content/Context;II)V

    .line 44
    invoke-virtual {v1, p2}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->setMDialog(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;->setMOSSnackbar(Lcom/transsion/widgetslib/dialog/OSSnackbar;)V

    .line 47
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;->getMOSSnackbar()Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_15

    monitor-exit p0

    return-object p1

    :goto_35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_15

    throw p1
.end method

.method public final setMOSSnackbar(Lcom/transsion/widgetslib/dialog/OSSnackbar;)V
    .registers 2

    .line 28
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->access$setMOSSnackbar$cp(Lcom/transsion/widgetslib/dialog/OSSnackbar;)V

    return-void
.end method
