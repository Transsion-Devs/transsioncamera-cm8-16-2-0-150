.class public final synthetic Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/ui/widget/adapter/UIAdapter$Builder;->$r8$lambda$1SmRx0CVrlfc_jUrnFxDJyfpRQo(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
