.class public final synthetic Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

.field public final synthetic f$1:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;Landroid/util/Size;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition$$ExternalSyntheticLambda1;->f$1:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition$$ExternalSyntheticLambda1;->f$1:Landroid/util/Size;

    check-cast p1, Landroid/util/Size;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->$r8$lambda$Kv_cdF2s1Y3Pi9_4azxO5k8-C-k(Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;Landroid/util/Size;Landroid/util/Size;)Z

    move-result p0

    return p0
.end method
