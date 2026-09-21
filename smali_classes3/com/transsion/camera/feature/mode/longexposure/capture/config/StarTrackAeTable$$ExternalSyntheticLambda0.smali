.class public final synthetic Lcom/transsion/camera/feature/mode/longexposure/capture/config/StarTrackAeTable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/config/StarTrackAeTable$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/config/StarTrackAeTable$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/config/StarTrackAeTable;->$r8$lambda$Z1-vW4hO3k-j92iz36uT4Heqdvo(ILjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
