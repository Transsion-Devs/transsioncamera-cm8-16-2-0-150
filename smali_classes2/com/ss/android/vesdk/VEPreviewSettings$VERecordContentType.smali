.class public final enum Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEPreviewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VERecordContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

.field public static final enum RecordEffectContent:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

.field public static final enum RecordFullContent:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

.field public static final enum RecordIntermediateContent:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

.field public static final enum RecordOriginContent:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

.field public static final enum RecordVideoContent:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 350
    new-instance v0, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    const-string v1, "RecordOriginContent"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;->RecordOriginContent:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    .line 351
    new-instance v1, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    const-string v2, "RecordEffectContent"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;->RecordEffectContent:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    .line 352
    new-instance v2, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    const-string v3, "RecordFullContent"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;->RecordFullContent:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    .line 353
    new-instance v3, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    const-string v4, "RecordIntermediateContent"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;->RecordIntermediateContent:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    .line 355
    new-instance v4, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    const-string v5, "RecordVideoContent"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;->RecordVideoContent:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    .line 349
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;->$VALUES:[Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 349
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;
    .registers 2

    .line 349
    const-class v0, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;
    .registers 1

    .line 349
    sget-object v0, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;->$VALUES:[Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    return-object v0
.end method
