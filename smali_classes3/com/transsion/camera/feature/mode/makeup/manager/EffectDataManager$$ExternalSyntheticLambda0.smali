.class public final synthetic Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/manager/EffectDataManager;->$r8$lambda$Stl5Tq7E19T3CwLVaBUlQryy3sQ(Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;)Z

    move-result p0

    return p0
.end method
