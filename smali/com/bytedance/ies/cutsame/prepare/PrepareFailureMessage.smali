.class public final Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage$Companion;

.field private static final NONE:Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;


# instance fields
.field private final failMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;->Companion:Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage$Companion;

    .line 9
    new-instance v0, Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;->NONE:Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "failMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;->failMessage:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 7
    const-string p1, ""

    :cond_6
    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getNONE$cp()Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;
    .registers 1

    .line 7
    sget-object v0, Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;->NONE:Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;

    return-object v0
.end method


# virtual methods
.method public final getFailMessage()Ljava/lang/String;
    .registers 1

    .line 7
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/prepare/PrepareFailureMessage;->failMessage:Ljava/lang/String;

    return-object p0
.end method
