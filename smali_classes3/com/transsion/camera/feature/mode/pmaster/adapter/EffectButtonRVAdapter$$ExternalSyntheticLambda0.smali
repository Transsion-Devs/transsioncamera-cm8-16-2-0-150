.class public final synthetic Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;ILcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;

    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;->$r8$lambda$TfGNOiSzCcnp5k9LEjIDOiTRSJ4(Lcom/transsion/camera/feature/mode/pmaster/adapter/EffectButtonRVAdapter;ILcom/transsion/camera/feature/mode/pmaster/data/EffectButtonItem;Landroid/view/View;)V

    return-void
.end method
