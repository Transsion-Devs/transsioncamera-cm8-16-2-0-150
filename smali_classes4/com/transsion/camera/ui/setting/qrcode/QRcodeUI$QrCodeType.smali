.class final enum Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "QrCodeType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

.field public static final enum FIDO:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

.field public static final enum MATTER:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

.field public static final enum SMS:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

.field public static final enum TEL:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

.field public static final enum TEXT:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

.field public static final enum URI:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

.field public static final enum VCARD:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

.field public static final enum WIFI:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;
    .registers 8

    .line 200
    sget-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->URI:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    sget-object v1, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->MATTER:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    sget-object v2, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->SMS:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    sget-object v3, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->TEL:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    sget-object v4, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->WIFI:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    sget-object v5, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->VCARD:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    sget-object v6, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->TEXT:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    sget-object v7, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->FIDO:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    filled-new-array/range {v0 .. v7}, [Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 200
    new-instance v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    const-string v1, "URI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->URI:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    new-instance v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    const-string v1, "MATTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->MATTER:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    new-instance v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    const-string v1, "SMS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->SMS:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    new-instance v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    const-string v1, "TEL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->TEL:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    new-instance v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    const-string v1, "WIFI"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->WIFI:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    new-instance v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    const-string v1, "VCARD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->VCARD:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    new-instance v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    const-string v1, "TEXT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->TEXT:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    new-instance v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    const-string v1, "FIDO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->FIDO:Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    invoke-static {}, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->$values()[Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->$VALUES:[Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;
    .registers 2

    .line 200
    const-class v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;
    .registers 1

    .line 200
    sget-object v0, Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->$VALUES:[Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    invoke-virtual {v0}, [Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/ui/setting/qrcode/QRcodeUI$QrCodeType;

    return-object v0
.end method
