.class public final Lcom/bytedance/bpea/entry/common/DataType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bpea/entry/common/DataType$Companion;
    }
.end annotation


# static fields
.field public static final AUDIO:Ljava/lang/String; = "audio"

.field public static final CLIPBOARD:Ljava/lang/String; = "clipboard"

.field public static final Companion:Lcom/bytedance/bpea/entry/common/DataType$Companion;

.field public static final LAT_AND_LON:Ljava/lang/String; = "latitudeAndLongitude"

.field public static final LOCATION_SDK:Ljava/lang/String; = "locationSDK"

.field public static final VIDEO:Ljava/lang/String; = "video"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/bpea/entry/common/DataType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/bpea/entry/common/DataType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/bpea/entry/common/DataType;->Companion:Lcom/bytedance/bpea/entry/common/DataType$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
