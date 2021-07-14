import requests
from bs4 import BeautifulSoup
import os

# coding=utf8

url_giay ='https://360boutique.vn/danh-muc/san-pham/thoi-trang-nam/giay-dep/giay/'
folder = 'giaynam'
# try:
#     os.mkdir(os.path.join(os.getcwd(),folder))
# except:
#     pass
# os.chdir(os.path.join(os.getcwd(),folder))

def imagedown(url,folder):
    r = requests.get(url)
    soup=BeautifulSoup(r.text,'html.parser')

    # print(soup.title.text)

    lista = soup.find_all('a')
    # print(image)
    for a in lista:
        if a.has_attr('class'):
            if a['class'] == ['image-resize']:
                t1 = a['title']
                # try:
                #     os.mkdir(os.path.join(
                #         "D:\PTPMTM\BaoCaoDeTai\PhanMemQuanLyCuaHangQuanAo\TaiThanhTuan_KanBichSuong_PhanMemQuanLyShopQuanAo\image\\giaynam\\"+folder,
                #         t1))
                # except:
                #     pass
                # os.chdir(os.path.join(
                #     "D:\PTPMTM\BaoCaoDeTai\PhanMemQuanLyCuaHangQuanAo\TaiThanhTuan_KanBichSuong_PhanMemQuanLyShopQuanAo\image\\giaynam\\"+folder,
                #     t1))
                r1 = requests.get(a['href'])
                soup1 = BeautifulSoup(r1.text, 'html.parser')
                images = soup1.find_all('img')
                for img in images:
                    if img.has_attr('alt'):
                        if img['alt'] == " " + a['title'] + " ":
                            namefolder = img['src'].split('/')
                            print(namefolder[len(namefolder) - 1])
                            # link_urlCT = img['src']
                            # with open(namefolder[len(namefolder) - 1], 'wb') as f:
                            #     im = requests.get(link_urlCT)
                            #     f.write(im.content)
                            #     print('Writing: ', namefolder[len(namefolder) - 1])
                # images = soup1.find_all('div')
                # for img in images:
                #     if img.has_attr('class'):
                #         if img['class'] == ['current-comment','js-friendly-links','js-open-card']:
                #             print(img)
def load_fol(url_1,folder_1,length):
    for i in range(1,length):
        # try:
        #     os.mkdir(os.path.join(
        #         "D:\PTPMTM\BaoCaoDeTai\PhanMemQuanLyCuaHangQuanAo\TaiThanhTuan_KanBichSuong_PhanMemQuanLyShopQuanAo\image\\giaynam",
        #         folder_1))
        # except:
        #     pass
        # os.chdir(os.path.join(
        #     "D:\PTPMTM\BaoCaoDeTai\PhanMemQuanLyCuaHangQuanAo\TaiThanhTuan_KanBichSuong_PhanMemQuanLyShopQuanAo\image\\giaynam",
        #     folder_1))
        imagedown(url_1+'page/'+str(i),folder_1)

load_fol(url_giay,"DMSPGDN20210509",3)

