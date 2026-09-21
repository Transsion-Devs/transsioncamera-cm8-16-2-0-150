.class public final synthetic Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f$3:Landroid/content/IntentSender;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager$$ExternalSyntheticLambda0;->f$2:Landroid/content/pm/ShortcutInfo;

    iput-object p4, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager$$ExternalSyntheticLambda0;->f$3:Landroid/content/IntentSender;

    iput p5, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager$$ExternalSyntheticLambda0;->f$2:Landroid/content/pm/ShortcutInfo;

    iget-object v3, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager$$ExternalSyntheticLambda0;->f$3:Landroid/content/IntentSender;

    iget p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager$$ExternalSyntheticLambda0;->f$4:I

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;->$r8$lambda$8p26jsXseY_ihXgZdEnRyHGQP40(Lcom/transsion/hubsdk/core/content/pm/TranThubShortcutManager;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
