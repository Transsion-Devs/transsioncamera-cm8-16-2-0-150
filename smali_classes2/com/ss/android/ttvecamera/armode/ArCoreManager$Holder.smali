.class Lcom/ss/android/ttvecamera/armode/ArCoreManager$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/armode/ArCoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ss/android/ttvecamera/armode/ArCoreManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/ss/android/ttvecamera/armode/ArCoreManager;

    invoke-direct {v0}, Lcom/ss/android/ttvecamera/armode/ArCoreManager;-><init>()V

    sput-object v0, Lcom/ss/android/ttvecamera/armode/ArCoreManager$Holder;->INSTANCE:Lcom/ss/android/ttvecamera/armode/ArCoreManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/ss/android/ttvecamera/armode/ArCoreManager;
    .registers 1

    .line 14
    sget-object v0, Lcom/ss/android/ttvecamera/armode/ArCoreManager$Holder;->INSTANCE:Lcom/ss/android/ttvecamera/armode/ArCoreManager;

    return-object v0
.end method
