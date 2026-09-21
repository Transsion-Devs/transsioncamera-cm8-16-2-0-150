.class public final synthetic Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Size;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$$ExternalSyntheticLambda0;->f$0:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode$$ExternalSyntheticLambda0;->f$0:Landroid/util/Size;

    check-cast p1, Landroid/util/Size;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/supernight/SuperNightMode;->$r8$lambda$rDAkAg8-dkjDBJfm-8nxEvp76H4(Landroid/util/Size;Landroid/util/Size;)Z

    move-result p0

    return p0
.end method
