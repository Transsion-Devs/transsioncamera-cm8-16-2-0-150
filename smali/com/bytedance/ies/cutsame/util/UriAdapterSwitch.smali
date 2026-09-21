.class public final Lcom/bytedance/ies/cutsame/util/UriAdapterSwitch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/util/UriAdapterSwitch;

.field private static open:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/util/UriAdapterSwitch;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/util/UriAdapterSwitch;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/util/UriAdapterSwitch;->INSTANCE:Lcom/bytedance/ies/cutsame/util/UriAdapterSwitch;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOpen()Z
    .registers 1

    .line 11
    sget-boolean p0, Lcom/bytedance/ies/cutsame/util/UriAdapterSwitch;->open:Z

    return p0
.end method

.method public final setOpen(Z)V
    .registers 2

    .line 11
    sput-boolean p1, Lcom/bytedance/ies/cutsame/util/UriAdapterSwitch;->open:Z

    return-void
.end method
