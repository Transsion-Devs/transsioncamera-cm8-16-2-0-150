.class public final enum Lcom/ss/android/ugc/cut_ui/CutSourceType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ugc/cut_ui/CutSourceType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation build Lkotlinx/android/parcel/Parcelize;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ugc/cut_ui/CutSourceType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/ugc/cut_ui/CutSourceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum JSON:Lcom/ss/android/ugc/cut_ui/CutSourceType;

.field public static final enum NEW:Lcom/ss/android/ugc/cut_ui/CutSourceType;

.field public static final enum PATH:Lcom/ss/android/ugc/cut_ui/CutSourceType;

.field public static final enum URL:Lcom/ss/android/ugc/cut_ui/CutSourceType;

.field public static final enum WORKSPACE:Lcom/ss/android/ugc/cut_ui/CutSourceType;


# instance fields
.field private final desc:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/ss/android/ugc/cut_ui/CutSourceType;
    .registers 5

    sget-object v0, Lcom/ss/android/ugc/cut_ui/CutSourceType;->URL:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    sget-object v1, Lcom/ss/android/ugc/cut_ui/CutSourceType;->PATH:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    sget-object v2, Lcom/ss/android/ugc/cut_ui/CutSourceType;->JSON:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    sget-object v3, Lcom/ss/android/ugc/cut_ui/CutSourceType;->WORKSPACE:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    sget-object v4, Lcom/ss/android/ugc/cut_ui/CutSourceType;->NEW:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ss/android/ugc/cut_ui/CutSourceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 29
    new-instance v0, Lcom/ss/android/ugc/cut_ui/CutSourceType;

    const/4 v1, 0x0

    const-string v2, "url"

    const-string v3, "URL"

    invoke-direct {v0, v3, v1, v2}, Lcom/ss/android/ugc/cut_ui/CutSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/CutSourceType;->URL:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    .line 31
    new-instance v0, Lcom/ss/android/ugc/cut_ui/CutSourceType;

    const/4 v1, 0x1

    const-string v2, "zip"

    const-string v3, "PATH"

    invoke-direct {v0, v3, v1, v2}, Lcom/ss/android/ugc/cut_ui/CutSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/CutSourceType;->PATH:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    .line 33
    new-instance v0, Lcom/ss/android/ugc/cut_ui/CutSourceType;

    const/4 v1, 0x2

    const-string v2, "json"

    const-string v3, "JSON"

    invoke-direct {v0, v3, v1, v2}, Lcom/ss/android/ugc/cut_ui/CutSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/CutSourceType;->JSON:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    .line 35
    new-instance v0, Lcom/ss/android/ugc/cut_ui/CutSourceType;

    const/4 v1, 0x3

    const-string v2, "workspace"

    const-string v3, "WORKSPACE"

    invoke-direct {v0, v3, v1, v2}, Lcom/ss/android/ugc/cut_ui/CutSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/CutSourceType;->WORKSPACE:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    .line 37
    new-instance v0, Lcom/ss/android/ugc/cut_ui/CutSourceType;

    const/4 v1, 0x4

    const-string v2, "new"

    const-string v3, "NEW"

    invoke-direct {v0, v3, v1, v2}, Lcom/ss/android/ugc/cut_ui/CutSourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/CutSourceType;->NEW:Lcom/ss/android/ugc/cut_ui/CutSourceType;

    invoke-static {}, Lcom/ss/android/ugc/cut_ui/CutSourceType;->$values()[Lcom/ss/android/ugc/cut_ui/CutSourceType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ugc/cut_ui/CutSourceType;->$VALUES:[Lcom/ss/android/ugc/cut_ui/CutSourceType;

    new-instance v0, Lcom/ss/android/ugc/cut_ui/CutSourceType$Creator;

    invoke-direct {v0}, Lcom/ss/android/ugc/cut_ui/CutSourceType$Creator;-><init>()V

    sput-object v0, Lcom/ss/android/ugc/cut_ui/CutSourceType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/ss/android/ugc/cut_ui/CutSourceType;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ugc/cut_ui/CutSourceType;
    .registers 2

    const-class v0, Lcom/ss/android/ugc/cut_ui/CutSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ugc/cut_ui/CutSourceType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ugc/cut_ui/CutSourceType;
    .registers 1

    sget-object v0, Lcom/ss/android/ugc/cut_ui/CutSourceType;->$VALUES:[Lcom/ss/android/ugc/cut_ui/CutSourceType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ugc/cut_ui/CutSourceType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getDesc()Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/ss/android/ugc/cut_ui/CutSourceType;->desc:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
