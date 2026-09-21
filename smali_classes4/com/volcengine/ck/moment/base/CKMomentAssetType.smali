.class public final Lcom/volcengine/ck/moment/base/CKMomentAssetType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IMAGE:I = 0x0

.field public static final INSTANCE:Lcom/volcengine/ck/moment/base/CKMomentAssetType;

.field public static final VIDEO:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/volcengine/ck/moment/base/CKMomentAssetType;

    invoke-direct {v0}, Lcom/volcengine/ck/moment/base/CKMomentAssetType;-><init>()V

    sput-object v0, Lcom/volcengine/ck/moment/base/CKMomentAssetType;->INSTANCE:Lcom/volcengine/ck/moment/base/CKMomentAssetType;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
