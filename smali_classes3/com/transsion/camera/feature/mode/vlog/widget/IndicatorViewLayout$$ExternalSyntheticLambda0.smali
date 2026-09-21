.class public final synthetic Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->$r8$lambda$VchhDu5gEWj-d5Gc8Fsage5jGxo(Landroid/widget/TextView;Z)V

    return-void
.end method
