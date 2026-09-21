.class public final Lcom/transsion/widgetslib/dialog/OSSnackbar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;,
        Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;

.field public static final LENGTH_LONG:I = 0xdac

.field public static final LENGTH_SHORT:I = 0x7d0

.field public static final LIMIT_BUTTON_FONT_MAX_PX_SIZE:F = 54.0f

.field public static final LIMIT_TEXTVIEW_FONT_MAX_PX_SIZE:F = 49.0f

.field private static mOSSnackbar:Lcom/transsion/widgetslib/dialog/OSSnackbar;


# instance fields
.field private mDialog:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->Companion:Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMOSSnackbar$cp()Lcom/transsion/widgetslib/dialog/OSSnackbar;
    .registers 1

    .line 21
    sget-object v0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->mOSSnackbar:Lcom/transsion/widgetslib/dialog/OSSnackbar;

    return-object v0
.end method

.method public static final synthetic access$setMOSSnackbar$cp(Lcom/transsion/widgetslib/dialog/OSSnackbar;)V
    .registers 1

    .line 21
    sput-object p0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->mOSSnackbar:Lcom/transsion/widgetslib/dialog/OSSnackbar;

    return-void
.end method

.method public static makeText(Landroid/content/Context;II)Lcom/transsion/widgetslib/dialog/OSSnackbar;
    .registers 4

    .line 0
    sget-object v0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->Companion:Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;->makeText(Landroid/content/Context;II)Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object p0

    return-object p0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/OSSnackbar;
    .registers 3

    .line 0
    sget-object v0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->Companion:Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/transsion/widgetslib/dialog/OSSnackbar;
    .registers 5

    .line 0
    const-class v0, Lcom/transsion/widgetslib/dialog/OSSnackbar;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/transsion/widgetslib/dialog/OSSnackbar;->Companion:Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;

    invoke-virtual {v1, p0, p1, p2}, Lcom/transsion/widgetslib/dialog/OSSnackbar$Companion;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/transsion/widgetslib/dialog/OSSnackbar;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p0
.end method


# virtual methods
.method public dismiss()V
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->mDialog:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->dismiss()V

    :cond_7
    return-void
.end method

.method public final getMDialog()Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->mDialog:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;

    return-object p0
.end method

.method public setAction(ILandroid/view/View$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSSnackbar;
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->mDialog:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_19

    .line 56
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "context.getText(resId)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/OSSnackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSSnackbar;

    return-object p0

    .line 58
    :cond_19
    const-string p1, "object recycled"

    invoke-static {p1}, Lcom/transsion/widgetscore/utils/LogUtil;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSSnackbar;
    .registers 4

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->mDialog:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->setButtonVisible(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    :cond_c
    return-object p0
.end method

.method public final setMDialog(Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->mDialog:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;

    return-void
.end method

.method public show()V
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSSnackbar;->mDialog:Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSSnackbar$OSSnackbarDialog;->show()V

    :cond_7
    return-void
.end method
